function resizedImage = resizeImage_replication(originalImage, scalingFactor)

[orgImgrow, orgImgcol] = size(originalImage);
% generate rearrange row&col index array
rowIndx = ceil([1 : floor(orgImgrow * scalingFactor)] ./ scalingFactor);
colIndx = ceil([1 : floor(orgImgcol * scalingFactor)] ./ scalingFactor);

% NN
tmp = originalImage(rowIndx, :);
resizedImage = tmp(:, colIndx);
end