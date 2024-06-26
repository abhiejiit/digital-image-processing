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

% Define the range of values for uniform noise
low = 0;  % Lowest possible value for noise
high = 120; % Highest possible value for noise

% Generate uniform noise
uniform_noise = low + (high-low) * rand(size(original_image));

% Add uniform noise to the original image
noisy_image = original_image + uint8(uniform_noise);

% Display the noisy image
subplot(2, 2, 3);
imshow(noisy_image);
title('Noisy Image');

% Display histogram of the noisy image
subplot(2, 2, 4);
imhist(noisy_image);
title('Histogram of Noisy Image');

% Adjust subplot sizes for better visibility
set(gcf, 'Position', get(0, 'Screensize')); % Maximize figure window
subplot(2, 2, 1);
set(gca, 'Position', [0.05 0.55 0.4 0.4]);

subplot(2, 2, 3);
set(gca, 'Position', [0.05 0.05 0.4 0.4]);

