                          #Main
                          #Part C
addpath("../functions"); 

figure('Name','Part C'); 

[z] = @(t) sin(4*pi*t).*exp(-abs(t)/3).*  (ustep(t) -ustep(t-5));

#plotting
t=-15:0.001:15;

for k=-18:6:18
  plot(t,z(t+k),'color','blue');
  xlabel('Time');
  ylabel('z(t)');
  title('Z-function');
  hold on;
endfor  

[z_square] =@(t) z(t).^2;

energy =integral(z_square,0,5) ; # equivalent to : energy =integral (z,0,5);
interval = 15 - (-15);
power = energy / interval;

msgbox(
strcat("energy = " ,mat2str(Inf),"\n","power = ",mat2str(power))
);
