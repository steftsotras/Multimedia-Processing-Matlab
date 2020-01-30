function [out, ratio] = runLengthEnbin(in)

%proetimasia tou input
in = imbinarize(in,100);

%xrhsimes metavlites
count = 0;
prev = in(1,1);
pos = 4;

%swzoume to megethos ths arxikhs eikonas
%kai to prwto duadiko stoixeio
out(1:3) = [size(in),prev];

%Enconding
for i = 1:size(in,1)
    for j = 1:size(in,2)
        if(in(i,j) == prev)
            count = count+1;
        else
            out(pos) = count;
            prev = in(i,j);
            count = 1;
            pos = pos+1
        end
    end
end
out(pos) = count;

ratio = round((size(in,1)*size(in,2))/length(out));
end