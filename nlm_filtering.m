% Read the original image
original_image = imread('/Users/jith/Downloads/IMG_5975.jpg');

% Convert the image to grayscale if it's not already
if ndims(original_image) == 3
    original_image = rgb2gray(original_image);
end

% Apply salt and pepper noise
noisy_image = imnoise(original_image, 'salt & pepper', 0.45); % Adding salt and pepper noise with density 0.05

% Apply Non-Local Means Filter
nlm_filtered_image = imnlmfilt(noisy_image);

% Display the original image, noisy image, and filtered image side by side
figure;
subplot(2, 3, 1);
imshow(original_image);
title('Original Image');

subplot(2, 3, 2);
imshow(noisy_image);
title('Noisy Image (Salt & Pepper)');

subplot(2, 3, 3);
imshow(nlm_filtered_image);
title('Non-Local Means Filtered Image');

% Display the histograms of the original image, noisy image, and filtered image side by side
subplot(2, 3, 4);
imhist(original_image);
title('Histogram of Original Image');

subplot(2, 3, 5);
imhist(noisy_image);
title('Histogram of Noisy Image');

subplot(2, 3, 6);
imhist(nlm_filtered_image);
title('Histogram of Filtered Image');
