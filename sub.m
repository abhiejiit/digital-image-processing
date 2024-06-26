% Perform subtraction of images
subtracted_image = imsubtract(image1, image2);

% Display original images and subtracted image
figure;
subplot(3,2,1);
imshow(image1);
title('Image 1');

subplot(3,2,2);
imshow(image2);
title('Image 2');

% Display subtracted image and its histogram
subplot(3,2,3);
imshow(subtracted_image, []);
title('Subtracted Image');

subplot(3,2,4);
imhist(subtracted_image);
title('Histogram of Subtracted Image');
