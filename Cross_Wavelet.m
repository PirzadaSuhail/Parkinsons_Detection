[file,path]=uigetfile('*.wav');
filename=[path file];
[input_signal,fs]=audioread(filename);

samples=[120*fs,130 *fs];
clear input_signal fs;

[input_signal,fs]=audioread(filename,samples); 
n=length(input_signal);
addpath('C:\Users\Debu\wavelet\wavelet-coherence-master')

[F,fre]=xwt(reference_signal,input_signal);
t=(0:(n-1))/fs;
%freq=fre';

abs=abs(F);
abs=rescale(abs);
mim=im2uint8(abs);
mimRGB=ind2rgb(mim,jet(128));
%image64 = imresize(mimRGB, [224, 224]);
%image(image64)
figure;
imagesc(t,fre,mimRGB);
xlabel('Time (s)','FontSize', 20);ylabel('Scale','FontSize', 10);

title("Magnitude Cross-wavelet Scalogram of Audio Signal",'FontSize', 10)

%imwrite(image64,'F:\parkinson_disease_cross_wavelet\PD\pd16_6.png');
