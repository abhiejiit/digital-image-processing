
% Read the original image
original_image = imread('/Users/jith/Downloads/IMG_5975.jpg');

% Convert the image to grayscale if it's not already
if ndims(original_image) == 3
    original_image = rgb2gray(original_image);
end

% Apply salt and pepper noise
noisy_image = imnoise(original_image, 'salt & pepper', 0.05); % Adding salt and pepper noise with density 0.05

% Display the original and noisy image
figure;
subplot(2, 3, 1);
imshow(original_image);
title('Original Image');

subplot(2, 3, 2);
imshow(noisy_image);
title('Noisy Image (Salt & Pepper)');

min_filtered_image = ordfilt2(noisy_image, 1, true(3));

% Display the Gaussian filtered image
subplot(2,3,3);
imshow(min_filtered_image);
title('Min Filtered Image');

subplot(2, 3, 4);
imhist(original_image);
title('Histogram of Original Image');

subplot(2, 3, 5);
imhist(noisy_image);
title('Histogram of Noisy Image');

subplot(2, 3, 6);
imhist(min_filtered_image);
title('Histogram of Filtered Image');
