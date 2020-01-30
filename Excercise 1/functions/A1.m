function A1(fs, x)

%Erwrthma 1

%///////////////////////////
%Apeikonish twn kanaliwn
figure(1);
subplot(1,2,1),plot(x(:,1)),title('Channel 1'),subplot(1,2,2),plot(x(:,2)),title('Channel 2');

%//////////////////////////
%akoume to arxiko arxeio hxou
sound(x,fs);

%diplasiasmos ths suxnothtas
sound(x,fs*2);

%upodiplasiasmos ths suxnothtas 
sound(x,fs/2);
clear sound;

%//////////////////////////
%ypodeigmatolhpsia kata 2 
%pernwntas apto arxeio times ana 
%duo kataxwthseis
x_2 = x(1:2:length(x));
sound(x_2,fs/2);
clear sound;

%antistoixa gia 4, 8, 12, 16
x_4 = x(1:4:length(x));
x_8 = x(1:8:length(x));
x_12 = x(1:12:length(x));
x_16 = x(1:16:length(x));

%//////////////////////////
%diarkeia twn fade
ft = 9;
%fade out
x_fadeout = fadeout(x,fs,ft);

%grammikh sunarthsh fthinei apo 1 ews 0
fo = 1:-1/(fs*ft):0;

figure(2);
subplot(1,3,1),plot(x),title('Orginal'),subplot(1,3,2),plot(fo),title('Function Applied');
subplot(1,3,3),plot(x_fadeout),title('Result');

%//////////////////////////
%fade in
x_fadein = fadein(x,fs,9);

%grammikh sunarthsh auksanei apo 0 ews 1
fi = 0:1/(fs*ft):1;

figure(3);
subplot(1,3,1),plot(x),title('Orginal'),subplot(1,3,2),plot(fi),title('Function Applied');
subplot(1,3,3),plot(x_fadein),ylim([-0.6 0.8]),title('Result');

%//////////////////////////
%white gaussian noise
x_noise = awgn(x,30);

%prostithete ksexwrista sta kanalia
x_rnoise = x;
x_lnoise = x;

x_lnoise(:,1) = x_lnoise(:,1) + x_noise(:,1);
x_rnoise(:,2) = x_rnoise(:,2) + x_noise(:,2);

figure(4);
subplot(4,2,1),plot(x(:,1)),ylim([-0.6 0.8]),title('Channel 1'),subplot(4,2,2),plot(x(:,2)),ylim([-0.6 0.8]),title('Channel 2');
subplot(4,2,3),plot(x_lnoise(:,1)),ylim([-0.6 0.8]),subplot(4,2,4),plot(x_lnoise(:,2)),ylim([-0.6 0.8]);
subplot(4,2,5),plot(x_rnoise(:,1)),ylim([-0.6 0.8]),subplot(4,2,6),plot(x_rnoise(:,2)),ylim([-0.6 0.8]);
subplot(4,2,7),plot(x_lnoise(:,1)),ylim([-0.6 0.8]),subplot(4,2,8),plot(x_rnoise(:,2)),ylim([-0.6 0.8]);

end