% Read the original image
original_image = imread('/Users/jith/Downloads/IMG_5975.jpg');

% Convert the original image to grayscale if it's not already
if ndims(original_image) == 3
    original_image = rgb2gray(original_image);
end

% Perform Fourier transformation
fourier_transformed_image = fft2(original_image);

% Perform Discrete Fourier Transform (DFT)
dft = fft(original_image);

% Display the original image and its Fourier spectrum
figure;
subplot(2, 2, 1);
imshow(original_image);
title('Original Image');
subplot(2, 2, 2);
imagesc(log(1 + abs(fftshift(fourier_transformed_image))));
colormap(gca, 'jet');
title('Fourier Spectrum');

% Display the magnitude of the DFT
subplot(2, 2, 3);
plot(abs(dft));
title('Magnitude of Discrete Fourier Transform (DFT)');
xlabel('Frequency (Hz)');
ylabel('Magnitude');

% Display the phase of the DFT
subplot(2, 2, 4);
plot(angle(dft));
title('Phase of Discrete Fourier Transform (DFT)');
xlabel('Frequency (Hz)');
ylabel('Phase (radians)');

% Adjust subplot sizes for better visibility
set(gcf, 'Position', get(0, 'Screensize')); % Maximize figure window
subplot(2, 2, 1);
set(gca, 'Position', [0.05 0.55 0.4 0.4]);

subplot(2, 2, 3);
set(gca, 'Position', [0.05 0.05 0.4 0.4]);