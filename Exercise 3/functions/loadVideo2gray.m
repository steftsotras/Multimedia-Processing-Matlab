function grayvid = loadVideo2gray(filename)

%eisagwgh tou arxeiou video sth matlab
vidRead = VideoReader(filename);

%diavasma olwn twn frames tou video
vidframes = read(vidRead);
numframes = get(vidRead,'NumberOfFrames');

%metatroph se grayscale
for i=1:numframes
    grayvid(:,:,i) = rgb2gray(vidframes(:,:,:,i)); 
end

end