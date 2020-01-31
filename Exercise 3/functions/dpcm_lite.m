function bitlvl = dpcm_lite(vid)

%ypologismos ths diaforas pixel metaksu 
%diadoxikwn eikonwn me manhattan norm
for i = 2:size(vid,3)
    diff(:,:,i) = vid(:,:,i-1) - vid(:,:,i);
end

%anaparagwgh twn diaforwn
implay(diff)

%vriskw th megaluterh diafora pou
%yparxei metaksu olwn twn eikonwn
max_diff = max(max(max(diff)));

%exwntas th megisth diafora vriskw se
%pio grey level prepei na vrisketai h
%eikona gia na mhn exei apwleies
if max_diff>128
    bitlvl = 8;
elseif max_diff>64
    bitlvl = 7;
elseif max_diff>32
    bitlvl = 6;
elseif max_diff>16
    bitlvl = 5;
elseif max_diff>8
    bitlvl = 4;
elseif max_diff>4
    bitlvl = 3;
elseif max_diff>2
    bitlvl = 2;
else
    bitlvl = 1;
end

end