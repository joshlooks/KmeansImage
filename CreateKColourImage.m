function RGBImage = CreateKColourImage(AssgnCluster,clusterMeans)
% This function takes a 2D array
% Inputs:
%        AssgnCluster = A 2D array (of order m,n) specifying  which cluster 
%                       each pixel of the input image belongs to
%        clusterMeans = A 3D array (of order k,1,3) where the RGB values in 
%                       each row correspond to the cluster number equal to 
%                       the row number
% Outputs:
%         RGBImage = A 3D array (of order m,n,3 and class uint8). RGB values
%         for each pixel assigned from the corresponding cluster (and the
%         mean RGB values that each cluster corresponds to)
% Author: nesaking100

% Finding the size of the array of clusters
[m,n] = size(AssgnCluster);
% Rounding the values within the mean RGB values arrays in case they aren't integers
clusterMeans = round(clusterMeans);
% Preallocating our output image array
RGBImage = zeros(m,n,3,'uint8');

% Loop runs for size of our cluster array and assigns each pixel the RGB
% values of the corresponding cluster's mean values
for i = 1:m
    for j = 1:n
        RGBImage(i,j,1) = clusterMeans(AssgnCluster(i,j),1,1);
        RGBImage(i,j,2) = clusterMeans(AssgnCluster(i,j),1,2);
        RGBImage(i,j,3) = clusterMeans(AssgnCluster(i,j),1,3);
    end
end