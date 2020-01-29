function x_fade = fadeout(x,fs,sec)

fade = 1:-1/(fs*sec):0
fade = transpose(fade)

lf = length(fade);
lx = length(x);

x_fade = x;
x_fade(lx-lf+1:lx,1) = x_fade(lx-lf+1:lx,1).*fade;


end