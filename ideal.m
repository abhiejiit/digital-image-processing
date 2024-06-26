% Read the original image
original_image = imread('/Users/jith/Downloads/IMG_5975.jpg');

% Convert the image to grayscale if it's not already
if ndims(original_image) == 3
    original_image = rgb2gray(original_image);
end

% Apply salt and pepper noise
noisy_image = imnoise(original_image, 'salt & pepper', 0.05);

% Perform Fourier transform
F = fft2(double(noisy_image));

% Get image size
[M, N] = size(noisy_image);

% Define cutoff frequency (D0) for the ideal low-pass filter
D0 = 1000; % Adjust as needed

% Create the ideal low-pass filter in frequency domain
[U, V] = meshgrid(0:(N-1), 0:(M-1));
u_centered = U - N/2;
v_centered = V - M/2;
D = sqrt(u_centered.^2 + v_centered.^2);
H_ideal = double(D <= D0);

% Apply the filter
G_ideal = H_ideal .* F;

% Perform inverse Fourier transform
ideal_filtered_image = real(ifft2(G_ideal));

% Display images and histograms
figure;
subplot(2, 3, 1);
imshow(original_image);
title('Original Image');

subplot(2, 3, 2);
imshow(noisy_image);
title('Noisy Image (Salt & Pepper)');

subplot(2, 3, 3);
imshow(ideal_filtered_image, []);
title('Ideal LP Filtered Image');

subplot(2, 3, 4);
imhist(original_image);
title('Histogram of Original Image');

subplot(2, 3, 5);
imhist(noisy_image);
title('Histogram of Noisy Image');

subplot(2, 3, 6);
imhist(uint8(ideal_filtered_image));
title('Histogram of Ideal LP Filtered Image');
