function [assgnCluster,clusterMeans] = KMeansRGB(inImg,seedMeans,maxIterations)
% This function takes an inputted image, an array containing the seed mean
% values used to initialise the k means clustering and a scalar numbering
% the maximum amount of iterations to be performed. It then outputs a 2D
% array specifying which cluster each pixel belongs to and a 3D array
% containing the mean RGB values for each cluster.
% Inputs:
%        inImg = A 3D array (order m,n,3) containing an inputted image
%        seedMeans = A 3D array (order k,1,3) containing the seed mean
%                    values
%        maxIterations = A single value, max number of iterations to perform
% Outputs:
%         assgnCluster = A 2D array (order m,n) specifying which cluster
%                        each pixel in the input image corresponds to
%         clusterMeans = A 3D array (order k,1,3) containing the means RGB
%                        values for each cluster
% Author: nesaking100

% Getting the number of seedMeans and preallocating the clusterMeans and
% assgnCluster vairables
[clusterNo,~,~] = size(seedMeans);
clusterMeans = zeros(clusterNo,1,3);
assgnCluster = AssignToClusters(inImg,seedMeans);

% Running the first iteration for the seed values. If, in the extremely
% unlikely possibility, that the updated means are the same as the seed
% means, function will return seed means
if clusterMeans == UpdateMeans(inImg,clusterNo,assgnCluster)
    clusterMeans = UpdateMeans(inImg,clusterNo,assgnCluster);
    return
    
    % Else statement runs if the above unlikely scenario occurs and runs the
    % UpdateMeans function on the seed means values
else
    clusterMeans = UpdateMeans(inImg,clusterNo,assgnCluster);
    % For loop will run until the max iterations is hit (-1 as an iteration
    % has already occurred above) and returns updated means if they are the
    % same as before the final iteration
    for i = 1:(maxIterations - 1)
        assgnCluster = AssignToClusters(inImg,clusterMeans);
        if clusterMeans == UpdateMeans(inImg,clusterNo,assgnCluster)
            clusterMeans = UpdateMeans(inImg,clusterNo,assgnCluster);
            return
            
            % If the values are not the same, the means are still updated
        else
            clusterMeans = UpdateMeans(inImg,clusterNo,assgnCluster);
        end
    end
end
% If the max iterations is reached, the final means values are returned and
% the 'error/warning' message below is displayed
disp('Maximum number of iterations reached before convergence was achieved.')