function out = imquant(im, bit)

%kvantisi ths eikonas
out = round(im / (2^(9-bit)));


end