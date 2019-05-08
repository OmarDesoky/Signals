                                        #Main
                                        #Part E
                                        
# Part E-a

arr = []
arr2= []
for i =-10:1:10
  t=i;
  if i==0;
    t=0.0000001;
  endif
  m= sin(5*pi*t)/(pi*t);
  r = m* cos(30*pi*t );
  arr2= [arr2 r];    
  arr = [arr m];
endfor

#plotting  m(t)
subplot(2,1,1);
y =fft(arr);
range = -10:1:10;
mag=abs(y);
plot (range,mag);                  
########################################################

#Part B-b
#plotting  r(t)
subplot(2,1,2);
z =fft(arr2);
mag2=abs(z);
plot (range,mag2);     
     