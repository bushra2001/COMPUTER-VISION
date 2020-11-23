%The problem statement is:
%To search over a window of possible displacements (You will search [-10,10] pixels), score each one using some image matching metric,
%and take the displacement with the best score. The simplest one is the Sum of Squared Differences (SSD) distance, which simply subtracts one image
%region from the other and evaluates the sum of the squared values in each pixel. You need to do SSD based calculations on image regions which are of double type.
%As R,G,B channels are highly correlated to each other, SSD metric is very likely to work. Your task is to hold the G channel as the reference and move around R and B channels over it and keep track of the SSD value for the 51x51 image regions at the center of the channels. For each channel, you will find the (x,y) displacement vector that gives the minimum SSD value.

%The program should divide the image into three equal parts.
%The first image is Blue Channel, the second one is Green channel and the last one is Red channel. You have to name your variables as below

%Blue channel Image - B
%Green channel Image - G
%Red channel Image - R

%Reference Green Channel center region (51x51) -
%ref_img_region (center of this region coincides with the center of image and indexes are always integers) Final aligned image - ColorImg_aligned

%Read the image
img = imread('course1image.jpg');
B=img(1:341,1:400);
G=img(342:682,1:400);
R=img(683:1023,1:400);
b=double(B);
g=double(G);
r=double(R);
b1=double(b(146:196,175:225));
g1=double(g(146:196,175:225));
r1=double(r(146:196,175:225));
ref_img_region = double(g1);
ref_img_region = double(ref_img_region);
error = inf;
for i = -10:10
for j = -10:10
shiftr1=circshift(r1,[i,j]);
temp1 = sum(sum((double(g1) - double(shiftr1)) .^ 2));
if temp1 < error
error = temp1;
shiftr_row = i;
shiftr_col = j;
end
end
end
error = inf;
for i = -10:10
for j = -10:10
shiftb2=circshift(b1,[i,j]);
temp2 = sum(sum((double(g1) - double(shiftb2)) .^ 2));
if temp2 < error
error = temp2;
shiftb_row = i;
shiftb_col = j;
end
end
end
shiftr=circshift(r,[shiftr_row,shiftr_col]);
shiftb=circshift(b,[shiftb_row,shiftb_col]);
ColorImg_aligned=cat(3,uint8(shiftr),uint8(g),uint8(shiftb));
imshow(ColorImg_aligned)
