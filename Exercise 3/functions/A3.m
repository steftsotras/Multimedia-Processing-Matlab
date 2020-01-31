function A3()

%Erwrthma 1
%///////////////////////////

filename = 'SampleVideo.mp4';
grayvid = loadVideo2gray(filename);

%Erwrthma 2-3
%///////////////////////////
bitlvl_whole = dpcm_lite(grayvid);
bitlvl_1_30 = dpcm_lite(grayvid(:,:,1:30));
bitlvl_31_60 = dpcm_lite(grayvid(:,:,31:60));
bitlvl_61_90 = dpcm_lite(grayvid(:,:,61:90));

end