function ar=golomb(num)
    arr=[];
    bi=[];
    if num==0
       arr= deci2binarr(1);
    elseif num>0
          val=2*num;
          bi=deci2binarr(val);
          l=size(bi);
          z=zeros(1,l(2)-1);
          arr=[z,bi];
    else
          val=-2*num+1;
          bi=deci2binarr(val);
          l=size(bi);
          z=zeros(1,l(2)-1);
          arr=[z,bi];
    end
    l(2)=0;
    %disp(arr);
    %disp('****');
    ar=arr;
end