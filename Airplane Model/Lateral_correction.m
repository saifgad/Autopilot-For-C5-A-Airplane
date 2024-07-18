function SD_Lateral_final = Lateral_correction(SD_Lat_dash, V_tot_0, Ixx, Izz, Ixz)
Yv=SD_Lat_dash(1);
Yb=SD_Lat_dash(2);
Lb_dash=SD_Lat_dash(3);
Nb_dash=SD_Lat_dash(4);
Lp_dash=SD_Lat_dash(5);
Np_dash=SD_Lat_dash(6);
Lr_dash=SD_Lat_dash(7);
Nr_dash=SD_Lat_dash(8);
Yda=SD_Lat_dash(9);
Ydr=SD_Lat_dash(10);
Lda_dash=SD_Lat_dash(11);
Nda_dash=SD_Lat_dash(12);
Ldr_dash=SD_Lat_dash(13);
Ndr_dash=SD_Lat_dash(14);

e=(Ixz^2)/(Ixx*Izz);
G=1/(1-e);
G=1/(1-((Ixz^2)/(Ixx*Izz)));

T=[G G*(Ixz/Ixx);G*(Ixz/Izz) G];

L_N_b=inv(T)*[Lb_dash;Nb_dash];
Lb=L_N_b(1);
Nb=L_N_b(2);

L_N_p=inv(T)*[Lp_dash;Np_dash];
Lp=L_N_p(1);
Np=L_N_p(2);

L_N_r=inv(T)*[Lr_dash;Nr_dash];
Lr=L_N_r(1);
Nr=L_N_r(2);

L_N_da=inv(T)*[Lda_dash;Nda_dash];
Lda=L_N_da(1);
Nda=L_N_da(2);

L_N_dr=inv(T)*[Ldr_dash;Ndr_dash];
Ldr=L_N_dr(1);
Ndr=L_N_dr(2);

SD_Lateral_final=[Yv Yb Lb Nb Lp Np Lr Nr Yda Ydr Lda Nda Ldr Ndr];
