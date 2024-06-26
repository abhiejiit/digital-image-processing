% Read the image
image = imread('/Users/jith/Downloads/IMG_5975.jpg');
figure;
subplot(1,2,1);
imshow(image);
title("Original image");
% Scaling
scaled_image = imresize(image,0.90);
subplot(1,2,2);
imshow(scaled_image);
title('Scaled Image (10% reduction)');