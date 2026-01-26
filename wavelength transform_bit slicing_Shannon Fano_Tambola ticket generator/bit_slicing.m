clc;
clear all;
close all;
I = imread('img.png');
if size(I,3)==3
    I=rgb2gray(I);
end
[rows, cols]=size(I); %getting the number of rows and columns in the matrix 
figure;
imshow(I);
bit_planes=zeros(rows, cols, 8); %storing the planes of different layers of 

for k=1:8                  
    power=2^(k-1);
% For each bit
for i=1:rows
for j=1:cols %for each element
            bit_planes(i,j,k)=mod(floor(double(I(i,j))/power), 2); 

end
end
end
figure;
for k = 1:8
    subplot(2,4,k)
    imshow(bit_planes(:,:,k),[]) %shows the 2D image according to the bit 
end
