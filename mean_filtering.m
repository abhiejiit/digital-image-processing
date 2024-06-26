
% Read the original image
original_image = imread('/Users/jith/Downloads/IMG_5975.jpg');

% Convert the image to grayscale if it's not already
if ndims(original_image) == 3
    original_image = rgb2gray(original_image);
end

% Apply salt and pepper noise
noisy_image = imnoise(original_image, 'salt & pepper', 0.25); % Adding salt and pepper noise with density 0.05

% Display the original and noisy image
figure;
subplot(2, 3, 1);
imshow(original_image);
title('Original Image');

subplot(2, 3, 2);
imshow(noisy_image);
title('Noisy Image (Salt & Pepper)');

mean_filtered_image = imfilter(noisy_image, fspecial('average', [6, 6]), 'replicate'); % kernal size is 6x6 maam

% Display the Gaussian filtered image
subplot(2,3,3);
imshow(mean_filtered_image);
title('Mean Filtered Image');

subplot(2, 3, 4);
imhist(original_image);
title('Histogram of Original Image');

subplot(2, 3, 5);
imhist(noisy_image);
title('Histogram of Noisy Image');

subplot(2, 3, 6);
imhist(mean_filtered_image);
title('Histogram of Filtered Image');
