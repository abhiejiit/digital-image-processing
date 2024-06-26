% Read the image
image = imread('/Users/jith/Downloads/IMG_5975.jpg');
figure;
subplot(1,2,1);
imshow(image)
title("Original image");
% Horizontal flipping
flipped_image = flip(image, 1);
subplot(1,2,2);
imshow(flipped_image);
title('Vertically Flipped Image');