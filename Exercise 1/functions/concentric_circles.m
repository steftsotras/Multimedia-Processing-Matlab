function concentric_circles()



x=300;
y=300;
rows = x;
cols = y;
radius = 30;
center = [x/2 y/2];  % In [X,Y] coordinates
% Make the circle
[xMat,yMat] = meshgrid(1:cols,1:rows);
distFromCenter = sqrt((xMat-center(1)).^2 + (yMat-center(2)).^2);
circleMat = distFromCenter<=radius;
figure, histogram(circleMat)


end