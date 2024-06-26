% Read the original image
original_image = imread('/Users/jith/Downloads/IMG_5975.jpg');

% Convert the original image to grayscale if it's not already
if ndims(original_image) == 3
    original_image = rgb2gray(original_image);
end

% Define filter sizes
filter_sizes = [3, 5, 7]; % Change this to include more filter sizes if needed

% Apply various low-pass filters
figure;
for i = 1:length(filter_sizes)
    % Create low-pass filter kernel
    filter_kernel = fspecial('average', filter_sizes(i));
    
    % Apply the filter using imfilter
    filtered_image = imfilter(original_image, filter_kernel);
    
    % Display filtered image
    subplot(length(filter_sizes), 2, (i-1)*2+1);
    imshow(filtered_image);
    title(['Filtered Image (Size ' num2str(filter_sizes(i)) ')']);
    
    % Display histogram of filtered image
    subplot(length(filter_sizes), 2, (i-1)*2+2);
    imhist(filtered_image);
    title(['Histogram of Filtered Image (Size ' num2str(filter_sizes(i)) ')']);
end

