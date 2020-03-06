function clusterMeans = UpdateMeans(inImg,clusterNo,assgnCluster)
% This function takes an inputted image, a number specifying the number of
% clusters to be used and an array specifying which cluster each pixel
% belongs to and outputs the mean RGB values for each cluster.
% Inputs:
%        inImg = A 3D array (order m,n,3) of an inputted image
%        clusterNo = The number of clusters in the image
%        assgnCluster = A 2D array (order m,n) linking pixels to their cluster
% Outputs:
%         clusterMeans = A 3D array (order clusterNo,1,3) containing the mean RGB
%                        values for each cluster
% Author: nesaking100

% Collecting the RGB values from the image
r = inImg(:,:,1);
g = inImg(:,:,2);
b = inImg(:,:,3);
% Preallocating the cluster RGB values
clusterMeans = zeros(clusterNo,1,3);

% For loop runs sets the RGB values of each cluster to the average of the 
% pixels in the input image assigned to that cluster 
% (assigned pixels found by logical indexing of the formed r,g and b arrays)
for i = 1:clusterNo
    clusterMeans(i,:,1) = mean(r(assgnCluster == i));
    clusterMeans(i,:,2) = mean(g(assgnCluster == i));
    clusterMeans(i,:,3) = mean(b(assgnCluster == i)); 
end