
function y=z(t)
y = sin(4*pi*t).*exp(-abs(t)/3).*  (ustep(t) -ustep(t-5));
end        