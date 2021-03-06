clear;
close all;

img = imread("Fig0220.tif");

shrinkFactor = 1 / 12.5;
shrinkImg = resizeImage_bilinear(img, shrinkFactor);

zoomFactor = 12.5;
zoomImg = resizeImage_bilinear(shrinkImg, zoomFactor);

subplot(1, 3, 1); imshow(img); title("Orignal Image");
subplot(1, 3, 2); imshow(shrinkImg); title(["(Bilinear)Shrinking Img by ", num2str(shrinkFactor)]);
subplot(1, 3, 3); imshow(zoomImg); title(["(Bilinear)Zooming Img by ", num2str(zoomFactor)]);