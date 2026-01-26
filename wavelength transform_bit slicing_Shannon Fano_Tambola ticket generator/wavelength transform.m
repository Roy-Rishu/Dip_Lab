clc;
clear;
close all;

% Read inbuilt image
I = imread('cameraman.tif');
imshow(I);
title('Original Image');
figure

% Convert to grayscale (already grayscale, but kept for learning)
Ig = I;
imshow(Ig);
title('Grayscale Image');

% Convert to double
I = im2double(I);
Ia=uint8(I);
% Perform DWT
[CA, CH, CV, CD] = dwt2(I, 'db1');

figure;

subplot(2,3,1);
imshow(I, []);
title('Original Image');

subplot(2,3,2);
imshow(CA, []);
title('Approximation Coefficients (CA)');

subplot(2,3,3);
imshow(abs(CH), []);
title('Horizontal Detail (CH)');

subplot(2,3,5);
imshow(abs(CV), []);
title('Vertical Detail (CV)');

subplot(2,3,6);
imshow(abs(CD), []);
title('Diagonal Detail (CD)');
