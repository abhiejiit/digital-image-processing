% Read the original image
original_image = imread('/Users/jith/Downloads/IMG_5975.jpg');

% Convert the image to grayscale if it's not already
if ndims(original_image) == 3
    original_image = rgb2gray(original_image);
end

% Apply salt and pepper noise
noisy_image = imnoise(original_image, 'salt & pepper', 0.05); % Adding salt and pepper noise with density 0.05

% Define cutoff frequency (D0) and filter order (n) for the Butterworth low-pass filter
D0 = 80; % Adjusted cutoff frequency for visible difference
n = 7;  % Adjusted filter order for visible difference

% Perform Fourier transform of the noisy image
F_noisy = fft2(double(noisy_image));

% Get image size
[M, N] = size(noisy_image);

% Create the Butterworth low-pass filter in the frequency domain
[U, V] = meshgrid(0:(N-1), 0:(M-1));
u_centered = U - N/2;
v_centered = V - M/2;
D = sqrt(u_centered.^2 + v_centered.^2);
H_butterworth = 1 ./ (1 + (D / D0).^(2 * n));

% Apply the Butterworth filter
G_butterworth = H_butterworth .* F_noisy;

% Perform inverse Fourier transform
butterworth_filtered_image = real(ifft2(G_butterworth));

% Display original image, noisy image, Butterworth filtered image, and their histograms
figure;

% Display original image
subplot(3, 2, 1);
imshow(original_image);
title('Original Image');

% Display histogram of original image
subplot(3, 2, 2);
imhist(original_image);
title('Histogram of Original Image');

% Display noisy image
subplot(3, 2, 3);
imshow(noisy_image);
title('Noisy Image (Salt & Pepper)');

% Display histogram of noisy image
subplot(3, 2, 4);
imhist(noisy_image);
title('Histogram of Noisy Image');

% Display Butterworth filtered image
subplot(3, 2, 5);
imshow(butterworth_filtered_image, []);
title('Butterworth Filtered Image');

% Display histogram of Butterworth filtered image
subplot(3, 2, 6);
imhist(uint8(butterworth_filtered_image));
title('Histogram of Butterworth Filtered Image');
