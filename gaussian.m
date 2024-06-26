% Read the original image
original_image = imread('/Users/jith/Downloads/IMG_5975.jpg');

% Display the original image
figure;
subplot(2, 2, 1);
imshow(original_image);
title('Original Image');

% Display histogram of the original image
subplot(2, 2, 2);
imhist(original_image);
title('Histogram of Original Image');

% Define sample values for mean and variance
mean_value = 0;   % Sample mean
variance_value = 0.01;  % Sample variance

% Add Gaussian noise to the original image
noisy_image = imnoise(original_image, 'gaussian', mean_value, variance_value);

% Display the noisy image
subplot(2, 2, 3);
imshow(noisy_image);
title('Noisy Image (Gaussian)');

% Display histogram of the noisy image
subplot(2, 2, 4);
imhist(noisy_image);
title('Histogram of Noisy Image (Gaussian)');

% Adjust subplot sizes for better visibility
set(gcf, 'Position', get(0, 'Screensize')); % Maximize figure window
subplot(2, 2, 1);
set(gca, 'Position', [0.05 0.55 0.4 0.4]);

subplot(2, 2, 3);
set(gca, 'Position', [0.05 0.05 0.4 0.4]);
