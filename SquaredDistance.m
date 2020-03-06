function sqDist = SquaredDistance(ptA,ptB)
% This function takes 2 points in 3D space and calculates the square of the distance between them.
% Inputs:
%        ptA = first point in 3D space
%        ptB = second point in 3D space
% Outputs:
%        sqDist = The squared distance between the points 
%                 (given by D = (P1 - Q1)^2 + (P2 - Q2)^2 + (P3 - Q3)^2
% Author: nesaking100
% Calculates the square distance between the 2 points using the equation: 
% D = (P1 - Q1)^2 + (P2 - Q2)^2 + (P3 - Q3)^2
sqDist = (ptA(1) - ptB(1))^2 + (ptA(2) - ptB(2))^2 + (ptA(3) - ptB(3))^2;