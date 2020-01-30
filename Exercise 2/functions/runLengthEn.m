function [out, ratio] = runLengthEn(in)

%xrhsimes metavlites
count = 0;
prev = in(1,1);
pos = 3;

%swzoume to megethos ths arxikhs eikonas
out(1:2) = size(in);

%Enconding
for i = 1:size(in,1)
    for j = 1:size(in,2)
        if(in(i,j) == prev)
            count = count+1;
        else
            out(pos) = prev;
            pos = pos+1;
            out(pos) = count;
            prev = in(i,j);
            count = 1;
            pos = pos+1
        end
    end
end
out(pos) = prev;
out(pos+1) = count;

ratio = round((size(in,1)*size(in,2))/length(out));
end