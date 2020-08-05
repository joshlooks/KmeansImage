function randPxls = SelectKRandomPoints(inImg,pxlNo)
% This function takes a 3D image array and a user selected number of points
% (k)and returns a 2D array of order (k,2), representing an assortment of k
% random pixels
% Inputs:
%        inImg = inputted 3D image array
%        pxlNo = inputted number of pixels
% Outpus:
%        randPxls = array of randomly selected pixels of order (k,2)
% Author: nesaking100

% Find the size of the inputted image
[m,n,~] = size(inImg);
% Preallocate our outputted random pixels array
randPxls = zeros(pxlNo,2);

% Permute a random set of linear indices of pixels within the input array 
indices = randperm((m * n),pxlNo);

% Use the ind2sub function to turn the randomly permuted linear indices
% back into subscrtipt values to be returned by our function. The first
% column of our randPxls holds the row subscripts and the second column
% holds the column subscripts
[randPxls(:,1),randPxls(:,2)] = ind2sub([m,n],indices);

