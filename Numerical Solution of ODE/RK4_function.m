function [t,y] = RK4_function(odefun, t, y0)

n=length(t);
y(:,1)=y0;
t_vec=t;
dt=t(2)-t(1);
f_vec=odefun;

for i=1:n
k1=f_vec(t_vec(i),y(:,i));
k2=f_vec(t_vec(i)+dt/2,y(:,i)+dt*k1/2);
k3=f_vec(t_vec(i)+dt/2,y(:,i)+dt*k2/2);
k4=f_vec(t_vec(i)+dt,y(:,i)+dt*k3);

y(:,i+1)=y(:,i)+(dt/6)*(k1+2*k2+2*k3+k4);

end

y=y(:,1:n);


end
