function multQuantMo(im)

%ta diafora bitsperpixel
qb = [8 7 6 5 4 3 2 1];
%arxikopoihsh pinaka opou tha swsoume tis eikones
qim = zeros(size(im,1),size(im,2),8);

for i = 1:length(qb)
    %kvantisi eikonas se i bpp kai apothikeush se pinaka
    qim(:,:,i) = imquant(im,qb(i));
    %apothikeush tou logou sumpiesews
    [temp,qr(i)] = runLengthEn(qim(:,:,i));
end

%Teliko figure deixnei th metavolh tou logou sumpieshs
figure(3);
for i = 1:8
    subplot(2,4,i),imshow(qim(:,:,i),[]),title(9-i+" b/p"+" Compression Ratio "+qr(i));
end

end