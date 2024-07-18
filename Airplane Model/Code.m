%% deifne The vector of states
n=length(t_vec);

u=zeros(1,n);
v=zeros(1,n);
w=zeros(1,n);

p=zeros(1,n);
q=zeros(1,n);
r=zeros(1,n);

phi=zeros(1,n);
theta=zeros(1,n);
psi=zeros(1,n);


%% Define The initial state 

u(1,1)=states_0(1);
v(1,1)=states_0(2);
w(1,1)=states_0(3);

p=states_0(4);
q=states_0(5);
r=states_0(6);

phi=states_0(7);
theta=states_0(8);
psi=states_0(9);


y(:,1)=states_0;


%% Forces
for i=1:n
Deltas_States=Matrix_states(6,6)*[u(1,i)-states_0(1);v(1,i)-states_0(2);w(1,i)-states_0(3);p(1,i)-states_0(4);q(1,i)-states_0(5);r(1,i)-states_0(6)];
d_X_states=Deltas_States(1);    
d_Y_states=Deltas_States(2);
d_Z_states=Deltas_States(3);
d_L_states=Deltas_States(4);
d_M_states=Deltas_States(5);
d_N_states=Deltas_States(6);

Delta_controls=Matrix_controls*[5*pi/180;0;0;0];
d_X_control=Delta_controls(1);
d_Y_control=Delta_controls(2);
d_Z_control=Delta_controls(3);
d_L_control=Delta_controls(4);
d_M_control=Delta_controls(5);
d_N_control=Delta_controls(6);

d_X=d_X_states+d_X_control;
d_Y=d_Y_states+d_Y_control;
d_Z=d_Z_states+d_Z_control;
d_L=d_L_states+d_L_control;
d_M=d_M_states+d_M_control;
d_N=d_N_states+d_N_control;

Delta_F=[d_X;d_Y;d_Z];

F_gravity=eul2rotm([psi(1,i) theta(1,i) phi(1,i)])*[0;0;mass*gravity];

F_vect=(Delta_F*mass)+F_gravity+F_gravity_0;


Delta_M=[d_L,d_M,d_N]*[Ixx;Iyy;Izz];

M_vect=Delta_M+M0;

k1=Cal_states_dot(t_vec(i),y(:,i),F_vect,M_vect,mass,I);
k2=Cal_states_dot(t_vec(i)+dt/2,y(:,i)+dt*k1/2,F_vect,M_vect,mass,I);
k3=Cal_states_dot(t_vec(i)+dt/2,y(:,i)+dt*k2/2,F_vect,M_vect,mass,I);
k4=Cal_states_dot(t_vec(i)+dt,y(:,i)+dt*k3,F_vect,M_vect,mass,I);

y(:,i+1)=y(:,i)+(dt/6)*(k1+2*k2+2*k3+k4);

u(1,i+1)=y(1,i); 
v(1,i+1)=y(2,i);
w(1,i+1)=y(3,i);
p(1,i+1)=y(4,i);
q(1,i+1)=y(5,i);
r(1,i+1)=y(6,i);
phi(1,i+1)=y(7,i);
theta(1,i+1)=y(8,i);
psi(1,i+1)=y(9,i);
x_b(1,i+1)=y(10,i);
y_b(1,i+1)=y(11,i);
z_b(1,i+1)=y(12,i);

end






