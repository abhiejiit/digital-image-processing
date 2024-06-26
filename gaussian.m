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
subplot(1, 3, 1);
imshow(original_image);
title('Original Image');

subplot(1, 3, 2);
imshow(noisy_image);
title('Noisy Image (Salt & Pepper)');
% Apply Gaussian filter
gaussian_filtered_image = imgaussfilt(noisy_image, 1); % Gaussian filter with sigma = 1

% Display the Gaussian filtered image
subplot(1,3,3);
imshow(gaussian_filtered_image);
title('Gaussian Filtered Image');
