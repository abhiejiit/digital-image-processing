% Perform absolute difference of images
abs_diff_image = imabsdiff(image1, image2);

% Display original images and absolute difference image
figure;
subplot(3,2,1);
imshow(image1);
title('Image 1');

subplot(3,2,2);
imshow(image2);
title('Image 2');

% Display absolute difference image and its histogram
subplot(3,2,3);
imshow(abs_diff_image, []);
title('Absolute Difference Image');

subplot(3,2,4);
imhist(abs_diff_image);
title('Histogram of Absolute Difference Image');
