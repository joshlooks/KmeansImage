function RGBValues = GetRGBValuesForPoints(inImg,randPxls)
% This function takes a 3D image array and a randomly generated array of
% pixel locations and outputs the RGB values of the pixels at the 
% randomly generated locations
% Inputs:
%        inImg = inputted 3D image array (order m,n)
%        randPxls = randomly generated array of pixel locations (order k,2)
% Outputs:
%         RGBvalues = RGB values of the pixels at the random locations
%                     an array order (m,1,3)
% Author: nesaking100

% Grab the number of pixels within our list of random pixel locations
[m,~] = size(randPxls);
% Preallocate our RGBValues list
RGBValues = zeros(m,1,3);

% Collects the RGB values of the pixels who's location was given in the
% randPixels input. Data is outputted to the RGBValues array
for i = 1:m
    for j = 1:3
        RGBValues(i,1,j) = inImg(randPxls(i,1),randPxls(i,2),j);
    end
end
