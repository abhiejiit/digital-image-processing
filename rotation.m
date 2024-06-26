% Read the image
image = imread('/Users/jith/Downloads/IMG_5975.jpg');

% Display the original image
figure;
subplot(1,3,1);
imshow(image);
title('Original Image');

% Rotation
rotated_image = imrotate(image, 45, 'crop');
subplot(1,3,2);
imshow(rotated_image);
title('Rotated Image (45 degrees)');

rotated_image = imrotate(image, 90, 'crop');
subplot(1,3,3);
imshow(rotated_image);
title('Rotated Image (90 degrees)');

