function A2(a,x_ge,x_le)

%Erwrthma 1-2
%///////////////////////////

%/////////A////////////
%ginetai kwdikopoihsh kai apokwdikopoihsh twn eikonwn
[ae, r_ae] = runLengthEn(a);
ad = runLengthDe(ae);

%RLE afou h eikona ginei binary
[ae_bin, r_ae_bin] = runLengthEnbin(a);
ad_bin = runLengthDebin(ae_bin);


%////////X_GE/////////
%normal
[xge, r_xge] = runLengthEn(x_ge);
xgd = runLengthDe(xge);

%binary
[xge_bin, r_xge_bin] = runLengthEnbin(x_ge);
xgd_bin = runLengthDebin(xge_bin);

%/////////X_LE/////////
%normal
[xle, r_xle] = runLengthEn(x_le);
xld = runLengthDe(xle);

%binary 
[xle_bin, r_xle_bin] = runLengthEnbin(x_le);
xld_bin = runLengthDebin(xle_bin);

%////////////////////////
%plots
figure(1);
subplot(3,3,1),imshow(a,[]),title('Original');
subplot(3,3,2),imshow(ad,[]),title("Decoded with Compression Ratio "+r_ae);
subplot(3,3,3),imshow(ad_bin,[]),title("Decoded Binary with Compression Ratio "+r_ae_bin);

subplot(3,3,4),imshow(x_ge,[]),title('Original');
subplot(3,3,5),imshow(xgd,[]),title("Decoded with Compression Ratio "+r_xge);
subplot(3,3,6),imshow(xgd_bin,[]),title("Decoded Binary with Compression Ratio "+r_xge_bin);

subplot(3,3,7),imshow(x_le,[]),title('Original');
subplot(3,3,8),imshow(xld,[]),title("Decoded with Compression Ratio "+r_xle);
subplot(3,3,9),imshow(xld_bin,[]),title("Decoded Binary with Compression Ratio "+r_xle_bin);


%Erwrthma 3-4
%///////////////////////////
%plot arxikhs kai kvantismenhs eikonas
figure(2);
subplot(1,2,1),imshow(x_le,[]),title('Original');
subplot(1,2,2),imshow(imquant(x_le,3),[]),title('Quantized at 3 bits/pixel');

multQuantMo(x_le);

end