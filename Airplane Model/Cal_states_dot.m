function states_dot=Cal_states_dot(t,states_vector,F_vect,M_vect,mass,I)

u = states_vector(1);
v = states_vector(2);
w = states_vector(3);

p = states_vector(4);
q = states_vector(5);
r = states_vector(6);

phi = states_vector(7);
theta = states_vector(8);
epsi = states_vector(9);

x_E = states_vector(10);
y_E = states_vector(11);
z_E = states_vector(12);

angular_rates_vect = [p; q; r];
velocity_vect = [u; v; w];
J_matrix = [1 sin(phi)*tan(theta) cos(phi)*tan(theta);
            0  cos(phi)             -sin(phi);
            0 (sin(phi)/cos(theta)) (cos(phi)/cos(theta))];
eul_vect = [phi , theta , epsi];
T=[cos(theta)*cos(epsi), -cos(phi)*sin(epsi)+sin(phi)*sin(theta)*cos(epsi),sin(phi)*sin(epsi)+cos(phi)*sin(theta)*cos(epsi);cos(theta)*sin(epsi),cos(phi)*cos(epsi)+sin(phi)*sin(theta)*sin(epsi),-sin(phi)*cos(epsi)+cos(phi)*sin(theta)*sin(epsi);-sin(theta),sin(phi)*cos(theta),cos(phi)*cos(theta)];

states_dot(1:3 , 1) = F_vect/mass - cross(angular_rates_vect, velocity_vect);
states_dot(4:6 , 1) = inv(I)*(M_vect - cross(angular_rates_vect, (I*angular_rates_vect) ));
states_dot(7:9 , 1) = J_matrix*angular_rates_vect;
states_dot(10:12 , 1) = eul2rotm([epsi,theta,phi])*velocity_vect;
end