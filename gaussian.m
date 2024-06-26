% Perform Fourier transform
F = fft2(double(noisy_image));

% Get image size
[M, N] = size(noisy_image);

% Define cutoff frequency (D0) and sigma for the Gaussian low-pass filter
D0 = 50; % Adjust as needed
sigma = 70; % Adjust as needed

% Create the Gaussian low-pass filter in frequency domain
[U, V] = meshgrid(0:(N-1), 0:(M-1));
u_centered = U - N/2;
v_centered = V - M/2;
D = sqrt(u_centered.^2 + v_centered.^2);
H_gaussian = exp(-(D.^2) / (2 * sigma^2));

% Apply the filter
G_gaussian = H_gaussian .* F;

% Perform inverse Fourier transform
gaussian_filtered_image = real(ifft2(G_gaussian));

% Display images and histograms
figure;
subplot(2, 3, 1);
imshow(original_image);
title('Original Image');

subplot(2, 3, 2);
imshow(noisy_image);
title('Noisy Image (Salt & Pepper)');

subplot(2, 3, 3);
imshow(gaussian_filtered_image, []);
title('Gaussian LP Filtered Image');

subplot(2, 3, 4);
imhist(original_image);
title('Histogram of Original Image');

subplot(2, 3, 5);
imhist(noisy_image);
title('Histogram of Noisy Image');

subplot(2, 3, 6);
imhist(uint8(gaussian_filtered_image));
title('Histogram of Gaussian LP Filtered Image');
