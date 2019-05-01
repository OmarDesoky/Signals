                          #Main
                          #Part D
 

 
#[m] = @(t)  (1-2*(abs(t)) ) .* (t<=0.5) .*(t>=-0.5) 
#plot(t,m(t));                    

#fouries_Transform = fft(m(t));
#plot(fouries_Transform) 

t=-0.5:0.0001:0.5;

T=6;   
                      
[h_real] = @(t) (1-2*(abs(t)) ) .* (t<=0.5) .*(t>=-0.5)  .* cos(2*pi*k*t);
[h_imag] = @(t) (1-2*(abs(t)) ) .* (t<=0.5) .*(t>=-0.5)  .* sin(2*pi*k*t);

k_range=-100:1:100;

for i =-100:1:100
  k=k_range[i]
  
endfor