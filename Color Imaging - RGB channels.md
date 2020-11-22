The problem statement is:

The program should divide the image into three equal parts, and place the second and third part (G and R) onto the first B
The first image is Blue Channel, the second one is Green channel and the last one is Red channel. You have to name your variables as below

Blue channel Image - B
Green channel Image - G
Red channel Image - R

![image](https://user-images.githubusercontent.com/61081924/99887079-2e978b00-2c63-11eb-85b6-319dad63d10d.jpg)

SOLUTION:

%Read the image

img = imread('image.jpg');

%Get the size (rows and columns) of the image

[r,c] = size(img);

rr=r/3;

%Wrire code to split the image into three equal parts and store them in B, G, R channels

B=imcrop(img,[1,1,c,rr-1]);

G=imcrop(img,[1,1*rr+1,c,rr-1]);

R=imcrop(img,[1,2*rr+1,c,rr-1]);

%concatenate R,G,B channels and assign the RGB image to ColorImg variable

ColorImg(:,:,1) = R;

ColorImg(:,:,2) = G;

ColorImg(:,:,3) = B;

imshow(ColorImg)
