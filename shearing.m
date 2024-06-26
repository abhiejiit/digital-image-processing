% Read the image
image = imread('/Users/jith/Downloads/IMG_5975.jpg');
figure;
subplot(1,2,1);
imshow(image)
title("Original image");
% Define shearing parameters
shear_factor = 0.5;
% Create a shearing matrix
shearing_matrix = [1 shear_factor 0; 0 1 0; 0 0 1];
% Apply shearing transformation
tform = affine2d(shearing_matrix);
sheared_image = imwarp(image, tform);
% Display the sheared image
subplot(1,2,2);
imshow(sheared_image);
title('Sheared Image');