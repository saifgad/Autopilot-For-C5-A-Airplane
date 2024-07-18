%% Run Data Code
run('Data_edit.m')
addpath("Pitch Controller")
addpath("Velocity Controller")
addpath("Height Controller")
addpath("Height Dot")
addpath("Roll Controller")
addpath("Rudder Controller")


load('Pitch_controller.mat');
load('U_Controller.mat')
load('U_theta_Controller.mat');
load('H_Controller.mat');
load('H_dot_Controller.mat')
load('H_dth_Controller.mat')
load('Rudder_Controller.mat');
load('Roll_Controller.mat')

%% Transfer Function 
differentiator=tf([1 0],1);
integrator=tf(1,[1 0]);
servo=tf(10,[1 10]);
Engine_Lag=tf(.1,[1 .1]);
%% Longitudinal 
%% Full Lineatized Longitudinal Matrices
A_Long=[Xu                    Xw                        -w0                            -gravity*cos(theta0)
        Zu/(1-Zwd)            Zw/(1-Zwd)                (Zq+u0)/(1-Zwd)                -gravity*sin(theta0)/(1-Zwd)
        Mu+((Mwd*Zu)/(1-Zwd)) Mw+((Mwd*Zw)/(1-Zwd))      Mq+((Mwd*(Zq+u0))/(1-Zwd))    -Mwd*((gravity*sin(theta0))/((1-Zwd)))
        0                      0                         1                              0                    ];


B_Long=[Xde                         Xdth
        Zde/(1-Zwd)                 Zdth/(1-Zwd)
        (Mde+((Mwd*Zde)/(1-Zwd)))   (Mdth+((Mwd*Zdth)/(1-Zwd)))
         0                       0];
C_Long=eye(4);
D_Long=zeros(4,2);
State_Space_Long=ss(A_Long,B_Long,C_Long,D_Long);

%% Transfer Functions
Full_Long_Tfs=tf(State_Space_Long);

% Elevator
u_de=    Full_Long_Tfs(1,1);
w_de=    Full_Long_Tfs(2,1);
q_de=    Full_Long_Tfs(3,1);
theta_de=Full_Long_Tfs(4,1);
w_dot_de=w_de*differentiator;
alpha_de=w_de/u0;
gamma_de=theta_de-alpha_de;
gamma_theta=minreal(gamma_de/theta_de);

% Thrust
u_dth=    Full_Long_Tfs(1,2);
w_dth=    Full_Long_Tfs(2,2);
w_dot_dth=w_dth*differentiator;
q_dth=    Full_Long_Tfs(3,2);
theta_dth=Full_Long_Tfs(4,2);

%% Open Loop Transfer Function 
OL_theta_transfer_function=-servo*theta_de;
OL_U_transfer_function=servo*Engine_Lag*u_dth;
OL_Vtot_transfer_function=1/V_tot_0 * (u0 * u_dth + w0 * w_dth)*Engine_Lag*servo;
h_theta=minreal(-integrator*(w_de/theta_de - u0));
CL_Theta_Theta_comm_transfer_function=tf(CL_Theta_Theta_comm);
OL_h_thetacomm_transfer_function=minreal(h_theta*CL_Theta_Theta_comm_transfer_function);

%% Open Loop Transfer Function For new arch
OL_U_theta=minreal((u_de/theta_de)*CL_Theta_Theta_comm_transfer_function);
OL_h_dot_dth=minreal((-integrator*(w_dot_dth-u0*q_dth))*servo*Engine_Lag);
%OL_h_dth=minreal((-integrator*integrator*(w_dot_dth-u0*q_dth))*servo*Engine_Lag);
OL_h_dth=h_theta*theta_dth;

%% Lateral
%% Full Lineatized Lateral Matrices
Lvd=(Lv + (Ixz / Ixx) * Nv) / (1 - Ixz^2 / (Ixx * Izz));
Lpd=(Lp + (Ixz / Ixx) * Np) / (1 - Ixz^2 / (Ixx * Izz));
Lrd=(Lr + (Ixz / Ixx) * Nr) / (1 - Ixz^2 / (Ixx * Izz));
Nvd=(Nv + (Ixz / Izz) * Lv) / (1 - Ixz^2 / (Ixx * Izz));
Npd=(Np + (Ixz / Izz) * Lp) / (1 - Ixz^2 / (Ixx * Izz));
Nrd=(Nr + (Ixz / Izz) * Lr) / (1 - Ixz^2 / (Ixx * Izz));
Ldad=(Lda + (Ixz / Ixx) *Nda ) / (1 - Ixz^2 / (Ixx * Izz));
Ldrd=(Ldr + (Ixz / Ixx) * Ndr) / (1 - Ixz^2 / (Ixx * Izz));
Ndad=(Nda + (Ixz / Izz) * Lda) / (1 - Ixz^2 / (Ixx * Izz));
Ndrd=(Ndr + (Ixz / Izz) * Ldr) / (1 - Ixz^2 / (Ixx * Izz));

A_Lat=[Yv   Yp+w0   Yr-u0         gravity*cos(theta0)     0
       Lvd  Lpd     Lrd           0                       0
       Nvd  Npd     Nrd           0                       0
       0    1       tan(theta0)   0                       0
       0    0       1/cos(theta0) 0                       0];
B_Lat=[Yda          Ydr
       Ldad         Ldrd
       Ndad         Ndrd
       0            0
       0            0];

C_Lat=eye(5);
D_Lat=zeros(5,2);
State_Space_Lat=ss(A_Lat,B_Lat,C_Lat,D_Lat);

%% Transfer Functions
Full_Lat_Tfs=tf(State_Space_Lat);

% aileron
v_da=Full_Lat_Tfs(1,1);
beta_da=v_da/u0;
p_da=Full_Lat_Tfs(2,1);
r_da=Full_Lat_Tfs(3,1);
phi_da=Full_Lat_Tfs(4,1);
psi_da=Full_Lat_Tfs(5,1);

% Ruder
v_dr=Full_Lat_Tfs(1,2);
beta_dr=v_dr/u0;
p_dr=Full_Lat_Tfs(2,2);
r_dr=Full_Lat_Tfs(3,2);
phi_dr=Full_Lat_Tfs(4,2);
psi_dr=Full_Lat_Tfs(5,2);

%% Open Loop Transfer Function 
OL_r_dr=servo*r_dr;

Lat_damper_ss=feedback(series(append(1,servo),State_Space_Lat,[1 2],[1 2]),HPF_Washout,2,3,1);
Lat_damper_tf=tf(Lat_damper_ss);
phi_da=Lat_damper_tf(4,1);
OL_phi_da=minreal(phi_da*servo);


