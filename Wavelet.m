clc
clear
clear all

[file,path]=uigetfile('*.wav');
filename=[path file];
[input_signal,fs]=audioread(filename);

samples=[21*fs,26*fs];
clear input_signal fs;

[input_signal,fs]=audioread(filename,samples); 
n=length(input_signal);
fb= cwtfilterbank('SignalLength',n,'SamplingFrequency',fs,'VoicesPerOctave',12);
[cfs,freq]=wt(fb,input_signal);
t=(0:(n-1))/fs;
%figure;
%pcolor(t,freq,abs(cfs))
%set(gcs,'yscale','log');
%shading interp;
%axis tight;
%title('scalogram');
abs=abs(cfs);
%im = imagesc(abs);
%colormap(jet(128))
%set(gcs,'yscale','log')
%cmap=jet(128);
%img_o = im.CData; % im is an image object and im.CData gives the image matrix
%min_ = min(img_o(:));
%max_ = max(img_o(:)); 
%imgr = round((single((im.CData)-min_)./max_-min_)*128); % normalized and converted into colormap indices
%img1 = ind2rgb(imgr,cmap); % Converts the indexed array into rgb format
% imwrite(flip(img1), 'D:\parkinson\HC1.png');
abs=rescale(abs);
mim=im2uint8(abs);
mimRGB=ind2rgb(mim,jet(128));
image64 = imresize(mimRGB, [224, 224]);
image(image64)
imwrite(image64,'C:\Users\Debu\Desktop\audio\preetam.png');
