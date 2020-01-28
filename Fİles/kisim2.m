%Seçkin Burak Cengiz
%2.Kýsým matlab kodlarý

guc=sum(data.^2);
disp('sinyalin gücü = ')
disp(guc)
%Grafik çýktýlarýnýn görünümü için deðiþtirilebilir parametreler
grafik_ayari = 80000;
aralik = length(data);
%Frekansý zamana çevirme ve ölçekleme
zaman=(1/8000)*grafik_ayari;
t=linspace(0,zaman,aralik);

x= data;                            %Orjinal sinyal
sifir = awgn(data,0);       %SNR=0 WGN uygulanmýþ sinyal
on = awgn(data,10);        %SNR=10 WGN uygulanmýþ sinyal
yirmi = awgn(data,20);   %SNR=20 WGN uygulanmýþ sinyal
%Grafik
subplot(4,1,1); plot(t,x(1:aralik))
title('Orjinal sinyal')
xlabel('Zaman(Saniye)')
ylabel('Sinyalin Gücü')

subplot(4,1,2); plot(t,sifir(1:aralik),'--')
title('SNR=0 dB WGN gürültü uygulanmýþ sinyal')
xlabel('Zaman(Saniye)')
ylabel('Sinyalin Gücü')

subplot(4,1,3); plot(t,on(1:aralik),'--')
title('SNR=10 dB WGN gürültü uygulanmýþ sinyal')
xlabel('Zaman(Saniye)')
ylabel('Sinyalin Gücü')

subplot(4,1,4); plot(t,yirmi(1:aralik),'--')
title('SNR=20 dB WGN gürültü uygulanmýþ sinyal')
xlabel('Zaman(Saniye)')
ylabel('Sinyalin Gücü')
