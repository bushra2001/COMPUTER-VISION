Given an image we need to to try different color spaces which match the montage below:

% ![img](https://user-images.githubusercontent.com/61081924/99875937-244ea000-2c15-11eb-8061-02d728e9b899.png)


% The uppermost left image is in RGB, imread reads a greyscale or color image from the file specified by the string filename.

RGB = imread('image1.jpg');

% Convert RGB color values to HSV color space

HSV = rgb2hsv(RGB);

% Convert RGB color values to NTSC color space

NTSC = rgb2ntsc(RGB);

% Convert RGB color values to YCbCr color space

YCbCr = rgb2ycbcr(RGB);

% To create a montage of all converted images

montage({RGB,HSV,NTSC,YCbCr}, 'Size', [2 2]);


%HSV CHANNEL MONTAGE:

% ![black](https://user-images.githubusercontent.com/61081924/99877478-50bbe980-2c20-11eb-9e1b-c4583ad3cb07.png)

[h,s,v] = imsplit(HSV);

%To create a montage of hsv images:

montage({h,s,v,RGB},"BorderSize",10,"BackgroundColor",'w');

%OTHER COLOR SPACES EXAMPLE:

XYZ=rgb2xyz(RGB);

lab=rgb2lab(RGB);
