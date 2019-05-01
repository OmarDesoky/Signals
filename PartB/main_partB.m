                      #MAIN
                      #PART B
                      
addpath("../functions")                        
 figure('Name','Part B');       
 
[y] = @(t) exp(-abs(t)/5).*(ustep(t+1) -ustep(t-3) );            
 #####################################
 
#function  itself
subplot(2,2,1);
result = @(t ) y(t)
t=-5:0.01:5
plot(t,result(t));

xlabel('Time');
ylabel('y');
title('function');

#####################################   
                 
#first function (y1)
subplot(2,2,2);
result = @(t ) y(3*t);
t=-5:0.01:5
plot(t,result(t));
xlabel('Time');
ylabel('y');
title('function 1');

#####################################

#second function (y2)
subplot(2,2,3);
result =@(t) y(t+3);
t=-5:0.01:5
plot(t,result(t));
xlabel('Time');
ylabel('y');
title('function 2');

#####################################

#third function (y3)
subplot(2,2,4);
result =@(t) y(4*t-2);
t=-5:0.01:5
plot(t,result(t));
xlabel('Time');
ylabel('y');
title('function 3');

