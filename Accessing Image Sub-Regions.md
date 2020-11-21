How to extract 50x50 image sub-regions from the top-left and bottom-right sub-regions of the image and compute their SSD (Sum of Squared Differences).
The Size of the image is 256x256.

The image is given as:

<img width="129" alt="access" src="https://user-images.githubusercontent.com/61081924/99878217-ac3ca600-2c25-11eb-96eb-fa0a16ade808.png">

% imread reads a greyscale or color image from the file specified by the string filename
 
img = imread('cameraman.tif');

%To extract top-left most sub-region. 

subimg1 = img(1:50,1:50);

%To extract bottom-righ most sub-region.

subimg2 = img(  end -49 :end,  end -49 :end);

%Computing their SSD

SSD = sum(sum((double(subimg1) - double(subimg2)).^2));

%Displaying Images

imshow(img) 

imshow(subimg1)

imshow(subimg2)

imshow(SSD)
