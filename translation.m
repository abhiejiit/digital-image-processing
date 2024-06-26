% Read the image
image = imread('/Users/jith/Downloads/IMG_5975.jpg');
figure;
subplot(1,2,1);
imshow(image)
title("Original image");

% Translation
tx = 90; % translation along x-axis
ty = 50; % translation along y-axis
translated_image = imtranslate(image, [tx, ty]);
subplot(1,2,2);
imshow(translated_image);
title('Translated Image (Tx = 90, Ty = 50)');