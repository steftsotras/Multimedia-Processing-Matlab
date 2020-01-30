function out = runLengthDe(in)

pos = 1;
count = 0;
cur = in(3);

%orizoume apo prin ton teliko pinaka kserwntas
%to megethos ths arxikhs eikonas, gia taxuthta
out = zeros(in(1:2));

for i = 4:2:length(in)
    for j = 1:in(i)
        count=count+1;
        out(pos,count)=cur;
        if count == in(2)
            pos=pos+1;
            count=0;
        end
    end
    if i == length(in)
        break;
    end
    cur = in(i+1);
end

%out = im2bw(out);

end