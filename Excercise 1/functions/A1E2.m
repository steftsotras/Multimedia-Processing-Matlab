function A1E2()

%//////////////////////////
%create white image of L,L
L = 250;
wimg = 255 * ones(L,L, 'uint8');

%orismos parametrwn
M1=2;M2=3;M3=1;M4=5;
N1=40;N2=20;N3=50;N4=60;

%kalesma sunarthshs opou prosthetei omokentrous kuklous
%sumfwna me tis parametrous
cir1 = con_cir(wimg,M1,N1);
cir2 = con_cir(wimg,M2,N2);
cir3 = con_cir(wimg,M3,N3);
cir4 = con_cir(wimg,M4,N4);

figure(1);
subplot(2,2,1),imshow(cir1),title("M = "+M1+", N = "+N1);
subplot(2,2,2),imshow(cir2),title("M = "+M2+", N = "+N2);
subplot(2,2,3),imshow(cir3),title("M = "+M3+", N = "+N3);
subplot(2,2,4),imshow(cir4),title("M = "+M4+", N = "+N4);

%//////////////////////////
%ypodeigmatolhpsia kata K kai K2
K = 5;
K2 = 8;

ncir1 = imsubsample(cir1,K);
ncir2 = imsubsample(cir1,K2);
ncir3 = imsubsample(cir2,K);
ncir4 = imsubsample(cir4,K2);

figure(2);
subplot(2,2,1),imshow(ncir1),title("M = "+M1+", N = "+N1+", K = "+K);
subplot(2,2,2),imshow(ncir2),title("M = "+M1+", N = "+N1+", K = "+K2);
subplot(2,2,3),imshow(ncir3),title("M = "+M2+", N = "+N2+", K = "+K);
subplot(2,2,4),imshow(ncir4),title("M = "+M4+", N = "+N4+", K = "+K2);


%//////////////////////////
%efarmogh filtrou mesou orou stis eikones
  
mcir2 = meanf(cir2);               
mcir4 = meanf(cir4);                 

mncir3 = imsubsample(mcir2,K);
mncir4 = imsubsample(mcir4,K2);

figure(3);
subplot(2,2,1),imshow(mcir2),title("M = "+M2+", N = "+N2);
subplot(2,2,2),imshow(mcir4),title("M = "+M4+", N = "+N4);
subplot(2,2,3),imshow(mncir3),title("M = "+M2+", N = "+N2+", K = "+K);
subplot(2,2,4),imshow(mncir4),title("M = "+M4+", N = "+N4+", K = "+K2);

end