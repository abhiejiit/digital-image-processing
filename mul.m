% Perform multiplication of images
multiplied_image = immultiply(image1, image2);

% Display original images and multiplied image
figure;
subplot(3,2,1);
imshow(image1);
title('Image 1');

subplot(3,2,2);
imshow(image2);
title('Image 2');

% Display multiplied image and its histogram
subplot(3,2,3);
imshow(multiplied_image, []);
title('Multiplied Image');

subplot(3,2,4);
imhist(multiplied_image);
title('Histogram of Multiplied Image');
