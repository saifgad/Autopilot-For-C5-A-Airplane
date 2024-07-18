%% Strucut For Delay
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


saifStruct = struct();
saifStruct.x = x0;
saifStruct.y= y0;
saifStruct.z = z0;
saifStruct.phi = phi0;
saifStruct.ceta = theta0;
saifStruct.psi = psi0;
saifStruct.u = u0;
saifStruct.v = v0;
saifStruct.w = w0;
saifStruct.p = p0;
saifStruct.q = q0;
saifStruct.r = r0;
saifStruct.alpha = alpha_0;
saifStruct.betaa = beta_0;
saifStruct.v_tot = V_tot_0;
saifStruct.w_dot = 0;