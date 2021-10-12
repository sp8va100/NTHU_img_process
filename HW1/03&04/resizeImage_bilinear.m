function resizedImage = resizeImage_bilinear(orignalImage, scalingFactor)
[orgImgRow, orgImgCol] = size(orignalImage);
outImgRow = floor(orgImgRow * scalingFactor);
outImgCol = floor(orgImgCol * scalingFactor);
resizedImage = zeros(outImgRow, outImgCol, 'uint8');

for i = 1 : outImgRow
    for j = 1 : outImgCol
        % map to orignal img
        xIn = max(j / outImgCol * orgImgCol, 1);
        yIn = max(i / outImgRow * orgImgRow, 1);
        
        % get neighbor point
        xPrev = floor(xIn);
        yPrev = floor(yIn);
        xNext = xPrev + 1;
        yNext = yPrev + 1;
        
        % check boarder
        xPrev = min(xPrev, orgImgCol);
        yPrev = min(yPrev, orgImgRow);
        xNext = min(xNext, orgImgCol);
        yNext = min(yNext, orgImgRow);

        % x-coordinate interpolation
        fR1 = (xNext - xIn) * orignalImage(yPrev, xPrev) + (xIn - xPrev) * orignalImage(yPrev, xNext);
        fR2 = (xNext - xIn) * orignalImage(yNext, xPrev) + (xIn - xPrev) * orignalImage(yNext, xNext);

        % y-coordinate interpolation
        resizedImage(i, j) = (yNext - yIn) * fR1 + (yIn - yPrev) * fR2;
    end
end

end

