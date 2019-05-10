                          #Main
                          #Part D

figure('Name','Part D');
                          
T=6;   
ak= [];
range=-100:1:100;

for  z=1:201
  k = range(z);
  [h_expo] =  @(t)  (1-2.*abs(t) ) .* exp((-2*pi/T)*t*k*i).* (t<=0.5) .*(t>=-0.5);
  answer = quadgk(h_expo,-3,3);
  Ak = answer /T;
  ak = [ak Ak];
endfor


#displaying ak's  in command line 
disp(ak);

 #calculating mag and phase
mag = abs(ak);
phase =arg(ak);
 
#plotting magnitude
subplot(2,1,1);
stem(range,mag);
axis([-10 10]);
xlabel('Frequency');
ylabel('ak');
title('Magnitude');

#plotting phase
subplot(2,1,2)
stem(range,phase);
axis([-10 10]);
xlabel('Frequency');
ylabel('ak');
title('Phase');