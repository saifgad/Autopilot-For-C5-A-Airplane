%% clear 
clc
clearvars
close all
%% Add data from Excel
Airplane_data=readtable("excelsheet_data_modified_747.xlsx","Range",'B2:B57').Var1;
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
run('Struct.m')

%% Stability Diravites in Longitudenal 

SD_Long = Airplane_data(21:36);
SD_Long_final = SD_Long;

tempvarLong = num2cell(SD_Long_final);

[Xu,Zu,Mu,Xw,Zw,Mw,Zwd,Zq,Mwd,Mq,Xde,Zde,Mde,Xdth,Zdth,Mdth] = deal(tempvarLong{:});

clear tempvarLong;
%% Stability Diravites in Lateral

SD_Lat_dash = Airplane_data(37:50);
SD_Lateral_final = Lateral_correction(SD_Lat_dash, V_tot_0, Ixx, Izz, Ixz);

Yv =SD_Lateral_final(1);
Yb =SD_Lateral_final(2);
Lb =SD_Lateral_final(3);
Nb =SD_Lateral_final(4);
Lp =SD_Lateral_final(5);
Np =SD_Lateral_final(6);
Lr =SD_Lateral_final(7);
Nr =SD_Lateral_final(8);
Yda =SD_Lateral_final(9);
Ydr =SD_Lateral_final(10);
Lda =SD_Lateral_final(11);
Nda =SD_Lateral_final(12);
Ldr =SD_Lateral_final(13);
Ndr =SD_Lateral_final(14);

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



    