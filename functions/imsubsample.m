function nim = imsubsample(im, K) 

[x y] = size(im);

%h upodeigmatolhpsia ginetai apo 1 mexri x kai y me bhma K
nim = im(1:K:x,1:K:y); 

end