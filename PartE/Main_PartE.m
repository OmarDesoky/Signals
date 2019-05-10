                                        #Main
                                        #Part E
                                        
t=[-100:0.01:100];
#plotting m(t) function from -10 to 10
subplot(4,1,1);
m =5.*sinc(5*t); 
plot(t,m) ;
axis([-10 10]);
#plotting m(t) function after doing fourier transform from -50 to 50
subplot(4,1,2);
fourier_transform_m = fft (m);
FTM_shifted_m = fftshift(fourier_transform_m);
plot (t,abs(FTM_shifted_m));
axis([-50 50]);
#plotting r(t) function from -10 to 10
subplot(4,1,3);
r = m.* cos(30*pi*t );
plot(t,r) ;
axis([-10 10]);
#plotting r(t) after doing  doing fourier transform from -50 to 50
subplot(4,1,4);
fourier_transform_r= fft (r);
FTM_shifted_r = fftshift(abs(fourier_transform_r));
t=[-57:0.0057:57];
plot (t, abs(FTM_shifted_r));
axis([-50 50]);