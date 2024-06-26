% Read two images
image1 = imread('/Users/jith/Downloads/Landscape-BW.jpg');
image2 = imread('/Users/jith/Downloads/strawberry-2.b692fca6e1fe.jpg');

% Convert images to grayscale if necessary
if ndims(image1) == 3
    image1 = rgb2gray(image1);
end
if ndims(image2) == 3
    image2 = rgb2gray(image2);
end

% Resize the images if necessary to match their dimensions
if size(image1) ~= size(image2)
    % Resize image2 to match the size of image1
    image2 = imresize(image2, size(image1));
end

% Perform division of images
divided_image = imdivide(double(image1), double(image2));

% Display original images and divided image
figure;
subplot(3,2,1);
imshow(image1);
title('Image 1');

subplot(3,2,2);
imshow(image2);
title('Image 2');

% Display divided image and its histogram
subplot(3,2,3);
imshow(divided_image, []);
title('Divided Image');

subplot(3,2,4);
imhist(uint8(divided_image));
title('Histogram of Divided Image');
