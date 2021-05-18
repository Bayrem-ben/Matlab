I = imread('cameraman.tif');
J = imnoise(I,'gaussian',0.2);
subplot(1,3,1),   imshow(J)
title('NOISE1');

Idiffusion = imdiffusefilt(J);
subplot(1,3,2),imshow(Idiffusion)
title('Anisotropic');
N = ones(3)/9 ;
H = imfilter(J,N) ;
subplot(1,3,3),imshow(H)
title('Moyenneur');

Idiffusion = imdiffusefilt(J);
subplot(1,3,2),imshow(Idiffusion)
title('Anisotropic');
N = ones(3)/9 ;
H = imfilter(J,N) ;
subplot(1,3,3),imshow(H)
title('Moyenneur');

[peaksnr, ~] = psnr(I, Idiffusion); 
fprintf('\n la valeur de snr de Idiffusion est %0.4f', peaksnr);

K = ssim(I, Idiffusion);
disp ([ '   La valeur de  SSIM de Idiffusion est ' , num2str(K)])

[peaksnr, snr] = psnr(I, H); 
fprintf('\n la valeur de snr de H est %0.4f', peaksnr);

Z = ssim(I, H);
disp ([ '   La valeur de  SSIM de H  est ' , num2str(Z)])