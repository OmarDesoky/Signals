                          #Main
                          #Part A
addpath("../functions")                          
figure('Name','Part A');                       
#rect function
subplot(3,2,1);
[y] =@(t) rect(t);
t=-5:0.01:5;
plot(t,y(t));
xlabel('Time');
ylabel('y');
title('Rect function');

#triangle function
subplot(3,2,2);
[y] =@(t) triangl(t);
t=-5:0.01:5;
plot(t,y(t));
xlabel('Time');
ylabel('y');
title('triangle function');

#unit step function
subplot(3,2,3);
[y] =@(t) ustep(t);
t=-5:0.01:5;
plot(t,y(t));
xlabel('Time');
ylabel('y');
title('unit step function');
###############################################################

#triangle function [REDFINED]
subplot(3,2,4);
[y] = @(t) triangl((1/3)*t) .*2
t=-5:0.01:5;
plot(t,y(t));
xlabel('Time');
ylabel('y');
title('triangle function[REDFINED]');
###############################################################

#combined function
subplot(3,2,5);
[y] = @(t) ustep(t+2) .* exp(-3*t)  .* sin((8/5)*pi*t);
t=-4:0.01:3;
plot(t,y(t));
xlabel('Time');
ylabel('y');
title('combined function');