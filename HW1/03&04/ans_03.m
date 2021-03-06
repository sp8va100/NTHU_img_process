clear all;
close;
%Write a computer program capable of zooming and shrinking an image by pixel replication. 
% Assume that the desired zoom/shrink factors are integers.   

img = imread("Fig0220.tif");

%use your program to shrink the image by a factor of 10.
shrinkFactor = 0.1;
shrinkImg = resizeImage_replication(img, shrinkFactor);


%Use your program to zoom the image in (b) back to the resolution of the original.
zoomFactor = 10;
zoomImg = resizeImage_replication(shrinkImg, zoomFactor);

subplot(1, 3, 1); imshow(img); title('Original Image');
subplot(1, 3, 2); imshow(shrinkImg); title(["(NN)Shrink by factor ", num2str(shrinkFactor)]);
subplot(1, 3, 3); imshow(zoomImg); title(["(NN)Zoom by factor ", num2str(zoomFactor)]);