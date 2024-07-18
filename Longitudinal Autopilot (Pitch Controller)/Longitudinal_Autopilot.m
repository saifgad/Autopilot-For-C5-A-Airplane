%% Run Data Code
run('Data_edit.m')
%% Transfer Function 
differentiator=tf([1 0],1);
integrator=tf(1,[1 0]);
servo=tf(10,[1 10]);
Engine_Lag=tf(.1,[1 .1]);

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
State_Space=ss(A_Long,B_Long,C_Long,D_Long);

%% Transfer Functions
Full_Long_Tfs=tf(State_Space);

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
q_dth=    Full_Long_Tfs(3,2);
theta_dth=Full_Long_Tfs(4,2);

%% Open Loop Transfer Function 
OL_theta_transfer_function=-servo*theta_de;
OL_U_transfer_function=servo*Engine_Lag*u_dth;
load('Pitch_controller.mat');
