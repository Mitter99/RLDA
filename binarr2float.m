function val = binarr2float(bin)

ln=size(bin);
val=0;
j=1;
while(j<ln(2)+1)
   val=val+bin(j)*(1/2^j); 
   j=j+1;
   %disp(val)
end