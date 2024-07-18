%% clear 
clc
clearvars
close all
%% Add data from Excel
Airplane_data=readtable("excelsheet_data_modified.xlsx","Range",'B2:B57').Var1;
%% Time Vector
dt=Airplane_data(1);
tfinal=Airplane_data(2);
t_vec=(0:dt:tfinal);
%% Airplane Mass & Gravity

mass=Airplane_data(51);
gravity=Airplane_data(52);

Ixx=Airplane_data(53);
Iyy=Airplane_data(54);
Izz=Airplane_data(55);
Ixz=Airplane_data(56);
Ixy=0;
Iyz=0;
I=[Ixx  -Ixy    -Ixz
  -Ixy   Iyy    -Iyz
  -Ixz  -Iyz     Izz];
%% States of The airplane
        % u v w p q r phi theta psi x y z
states_0=Airplane_data(4:15);
V_tot_0=sqrt(states_0(1)^2+states_0(2)^2+states_0(3)^2);

F_gravity_0=mass*gravity*[sin(states_0(8))
                         -cos(states_0(8))*sin(states_0(7))
                         -cos(states_0(8))*cos(states_0(7))];
M0=[0;0;0];
% run('Struct.m')

%% Stability Diravites in Longitudenal 

SD_Long = Airplane_data(21:36);
SD_Long_final = SD_Long;

tempvarLong = num2cell(SD_Long_final);

[Xu,Zu,Mu,Xw,Zw,Mw,Zwd,Zq,Mwd,Mq,Xde,Zde,Mde,Xdth,Zdth,Mdth] = deal(tempvarLong{:});

clear tempvarLong;
%% Stability Diravites in Lateral

SD_Lat_dash = Airplane_data(37:50);
SD_Lateral_final = Lateral_correction(SD_Lat_dash, V_tot_0, Ixx, Izz, Ixz);


tempvarLong = num2cell(SD_Lateral_final);
[Yv Yb Lb Nb Lp Np Lr Nr Yda Ydr Lda Nda Ldr Ndr] = deal(tempvarLong{:});
clear tempvarLong;

Yv = Yb/V_tot_0;
Lv = Lb/V_tot_0;
Nv = Nb/V_tot_0;
Yp = 0;
Yr = 0;

%% Matrices
             % u    v   w   p   q   r   w_dot
Matrix_states=[Xu   0   Xw  0   0   0   0    
               0    Yv  0   Yp  0   Yr  0
               Zu   0   Zw  0   Zq  0   Zwd
               0    Lv  0   Lp  0   Lr  0
               Mu   0   Mw  0   Mq  0   Mwd
               0    Nv  0   Np  0   Nr  0 ];
             % d_aileron        d_elevator      d_thrust        d_rudder
Matrix_controls=[ 0             Xde             Xdth            0
                  Yda           0               0               Ydr
                  0             Zde             Zdth            0    
                  Lda           0               0               Ldr
                  0             Mde             Mdth            0
                  Nda           0               0               Ndr];
%% Struct 
u0=states_0(1);
v0=states_0(2);
w0=states_0(3);

p0=states_0(4);
q0=states_0(5);
r0=states_0(6);

phi0=states_0(7);
theta0=states_0(8);
psi0=states_0(9);

x0=states_0(10);
y0=states_0(11);
z0=states_0(12);

alpha_0=Airplane_data(18);
beta_0=0;

delayStruct = struct();

delayStruct.x = x0;
delayStruct.y= y0;
delayStruct.z = z0;

delayStruct.phi = phi0;
delayStruct.ceta = theta0;
delayStruct.psi = psi0;

delayStruct.u = u0;
delayStruct.v = v0;
delayStruct.w = w0;

delayStruct.p = p0;
delayStruct.q = q0;
delayStruct.r = r0;

delayStruct.alpha = alpha_0;
delayStruct.betaa = beta_0;
delayStruct.v_tot = V_tot_0;

delayStruct.w_dot = 0;



    