function n_im = con_cir(i,M,N)

%pernoume to mhkos twn sthlwn
%kai grammwn ths eikonas
[r c] = size(i);

%orizoume th gwnia me thn opoia 
%tha ftiaksoume tous kuklous
angle = 0:(1/99)*2*pi:(2*pi);

figure;
hold on;
%deixnoume th fwtografia
imshow(i,[]);

%me to hold on h fwtografia menei sto figure
%mporwntas etsi na zwgrafisoume apo panw tous kuklous
hold on;
%dhmiourgoume omokentrous kuklous kathe N fores
%opou einai h apostash pou exoun metaksu tous oi kukloi
%mexri to telos to telos ths eikonas
for co = 1:N:max([r c])
    
    %ftiaxnoume ton kuklo me co radius
    x = co * cos(angle);
    y = co * sin(angle);
    
    %kanoume plot ton kuklo me M paxos grammhs
    plot(x+r/2,y+c/2,'black','LineWidth',M);
    axis([0,r,0,c]);
end

%pernoume to figure kai to metatrepoume se eikona
F = getframe;
n_im = rgb2gray(frame2im(F));

close(gcf);
end