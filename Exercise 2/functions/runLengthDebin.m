function out = runLengthDebin(in)

pos = 1;
count = 0;

%to prwto duadiko stoixeio pou swsame sth 3h thesh
bin = in(3);

%orizoume apo prin ton teliko pinaka kserwntas
%to megethos ths arxikhs eikonas, gia taxuthta
out = zeros(in(1:2));

for i = 4:length(in)
    for j = 1:in(i)
        count=count+1;
        out(pos,count)=bin;
        if count == in(2)
            pos=pos+1;
            count=0;
        end
    end
    if bin == 0
        bin=1;
    else
        bin=0;
    end
end

end