I=imread( 'lena.jpg');
I=rgb2gray (I) ;
I=double ( I ) / 255.0;
IB = imnoise(I,'salt & pepper',0.1);
H=ones(3,3)/9;
IOG=imgaussfilt(I);
IBG= imgaussfilt(IB);
IOMedian=medfilt2(I);
IBMedian= medfilt2(IB);
IF5=filter2(H5,IB);
IF6=filter2(H6,IB);
subplot(2,2,1);
imshow(IOG);
title (' image original filrer par gaussien');
subplot ( 2, 2, 2 );
imshow(IBG);
title (' image bruité filrer par gaussien ');
subplot(2,2,3);
imshow(IF3);
title (' image original filre par par median ');
subplot(2,2,4);
imshow(IF4);
title (' image bruité filre par par median ');


