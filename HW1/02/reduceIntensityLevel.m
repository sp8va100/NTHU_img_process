function quantizedImage = reduceIntensityLevel(originalImage, intensityLevel)
    quantizedImage = uint8(floor(double(originalImage) / 256 * intensityLevel));
end

