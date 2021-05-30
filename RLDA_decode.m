format long
str='00000001000100001111111011101';
disp(str);
len=length(str);
disp(len);
bin=zeros(1,len);
%Binary Arithmetic Coding Start
for i=1:len
    if str(i)=='1';
        bin(1,i)=1;
    end
end
disp(bin);
 fv=0;
 for i=1:len
     fv=fv+bin(1,i)*2.^-i;
 end
disp(fv);
ba=zeros(1,33);
ev=fv;
for i=1:33
      if ev<=(2/3)
         ub=2/3;
         lb=0;
         ba(1,i)=0;    
      else
          ub=1;
          lb=2/3;
          ba(1,i)=1;
      end
      cr1=ub-lb;
      ev=(ev-lb)/cr1;
end
disp(ba);%Binary Aritmetic Coding End
%n=0;
% Zeroth Order Exponential Golombs Code Start
inar=zeros;
cou=0;
i=1;
while i<=33
    n=0;
    nm=i;
    if(ba(1,i)==0)
        while nm<=33
            if ba(1,nm)==0
                n=n+1;
            else
                break
            end
        nm=nm+1;
        end
        g=0;
        for j=1:(n+1)
            if(ba(1,n+j+i-1)==1)
                g=g+2.^(n+1-j);
            end  
        end
    else
        g=0;
        n=0;
    end
    %disp(n);
    cou=cou+1;
    inar(1,cou)=g;
    i=i+2*n+1;
    %disp(i);
    %disp('------');
end
gca=zeros(1,cou);
for k=1:cou
   if(mod(inar(1,k),2)==0)
      gca(1,k)=inar(1,k)/2;
   else
      gca(1,k)=-1*(inar(1,k)-1)/2;
   end
end%Zeroth Order Exponential Golombs Code End
disp(gca);
%Diiferential Coding and Normalization
act=zeros;
for i=1:4
    if i==1
        act(1,1)= gca(1)*0.01;
    end
    act(1,i+1)=(gca(1)+gca(i+1))*0.01;
end
disp(act);