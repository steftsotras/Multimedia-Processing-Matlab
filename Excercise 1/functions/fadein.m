function x_fade = fadein(x,fs,sec)

%Dhmiourgia ths sunarthshs metavolhs
%apo 0 mexri 1 me ruthmo 1/fs*sec
fade = 0:1/(fs*sec):1
%gyrisma tou pinaka gia na mporoume na kanoume prakseis
fade = transpose(fade)

lf = length(fade);

x_fade = x;
%pollaplasiasmos twn timwn tou arxeiou hxou, apo thn arxh 
%mexri to megethos ths sunarthshs etsi wste na epireastoun
%osa deuterolepta apto arxeio prepei
x_fade(1:lf,1) = x_fade(1:lf,1).*fade;
x_fade(1:lf,2) = x_fade(1:lf,2).*fade;

end