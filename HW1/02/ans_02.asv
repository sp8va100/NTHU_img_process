clear;
close all;
%Write a computer program capable of reducing the number of intensity levels in a image from 256 to 2, in integer powers of 2.  
% The desired number of intensity levels needs to be a variable input to your program.
img = imread("fig.tif");

intensityLevel = 2;
reduceImg = reduceIntensityLevel(img, intensityLevel);


subplot(1, 2, 1); imshow(img); title("Orignal Image");
subplot(1, 2, 2); imshow(reduceImg, [0, intensityLevel - 1]); title(["Reduce Intensity Level to ", num2str(intensityLevel)]);