%Compute Gx and Gy using imgradientxy function.

%Compute Gmag and Gdir using imgradientxy function.

%Read an image into workspace.

img=imread('cameraman.tif');

%Calculate the x- and y-directional gradients. By default, imgradientxy uses the Sobel gradient operator.

[Gx,Gy]=imgradientxy(img);

%Uncomment the code below to visualize Gx and Gy 
%Display the directional gradients.

imshowpair(Gx,Gy,'montage')

%Calculate the gradient magnitude and direction using the directional gradients.
%Uncomment the code below to visualize Gmag and Gdir 

[Gmag,Gdir] = imgradient(Gx,Gy);

%Display the gradient magnitude and direction.

imshowpair(Gmag,Gdir,'montage')
