The problem statement is:
To search over a window of possible displacements (You will search [-10,10] pixels), score each one using some image matching metric,
and take the displacement with the best score. The simplest one is the Sum of Squared Differences (SSD) distance, which simply subtracts one image region
from the other and evaluates the sum of the squared values in each pixel. You need to do SSD based calculations on image regions which are of double type.
As R,G,B channels are highly correlated to each other, SSD metric is very likely to work. Your task is to hold the G channel as the reference and move around
R and B channels over it and keep track of the SSD value for the 51x51 image regions at the center of the channels.
For each channel, you will find the (x,y) displacement vector that gives the minimum SSD value.

The program should divide the image into three equal parts.
The first image is Blue Channel, the second one is Green channel and the last one is Red channel. You have to name your variables as below

Blue channel Image - B
Green channel Image - G
Red channel Image - R

