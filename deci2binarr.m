function arr=deci2binarr(val)
    cnt=1;
    bin=zeros;
    while val~=0
        bin(1,cnt)=mod(val,2);
        val=(val-bin(1,cnt))/2;
        cnt=cnt+1;
    end
    arr=zeros(1,cnt-1);
    i=cnt-1;
    while i~=0
        arr(1,cnt-i)=bin(1,i);
        i=i-1;
    end
    %disp(arr);
end