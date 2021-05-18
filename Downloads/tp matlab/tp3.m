H1 = ones (3,3) / 9 ;

I = imread ('lena.jpg');
I=rgb2gray ( I ) ;
I=double ( I ) / 255.0;
F=filter2 ( H1 , I );
subplot ( 2, 1, 1 ), imshow(I);
title (' image originale');
subplot ( 2, 1, 2 ), imshow(F);
title (' image filtrée par h1'); 




