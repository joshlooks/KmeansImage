function assgnCluster = AssignToClusters(inImg,clusterMeans)
% This function takes a 3D image array and an array of mean RGB values for 
% randomly generated pixel clusters and assigns each pixel of the 3D image 
% to the cluster with the closest RGB values
% Inputs:
%        inImg = A 3D image array (of order m,n,3) that the user has inputted
%        clusterMeans = A 3D array (of order k,1,3) containing colour 
%                       information for each of k means
% Outputs:
%         AssgnCluster = A 2D array (of order m,n)
% Author: nesaking100

% Get the size of both the inputted image and the cluster means array and
% preallocates both the output array and one to store the squared distances
% between a pixel and means values
[m,n,~] = size(inImg);
[x,~,~] = size(clusterMeans);
[assgnCluster] = zeros(m,n);
SqDist = zeros(m,n,x);

% For loop iterates for every cluster in the means array and calculates the 
% squared distance between it input pixels. Each layer of the third dimension of 
% SqDist array corresponds to a different cluster mean
for k = 1:x
    SqDist(:,:,k) = (inImg(:,:,1) - clusterMeans(k,:,1)).^2 + ...
                    (inImg(:,:,2) - clusterMeans(k,:,2)).^2 + ...
                    (inImg(:,:,3) - clusterMeans(k,:,3)).^2;
end

% Sets the cluster of each pixel to the closest cluster
[~,assgnCluster] = min(SqDist,[],3);
