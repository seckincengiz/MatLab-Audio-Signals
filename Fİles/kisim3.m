%Se�kin Burak Cengiz
%3.K�s�m matlab kodlar�

%Grafik ��kt�lar�n�n g�r�n�m� i�in de�i�tirilebilir parametreler
grafik_ayari = 80000;
aralik = length(data);
%Frekans� zamana �evirme ve �l�ekleme
zaman=(1/8000)*grafik_ayari;
t=linspace(0,zaman,aralik);
%De�i�tirilebilir K parametresi
K=0;
while K<200
K = input('K de�eri giriniz = ');
h=(1/K)*ones(1,K);

x = data;                           %Orjinal sinyal
sifir = awgn(data,0);       %SNR=0 WGN uygulanm�� sinyal
on = awgn(data,10);        %SNR=10 WGN uygulanm�� sinyal
yirmi = awgn(data,20);   %SNR=20 WGN uygulanm�� sinyal

a=conv(sifir,h);
b=conv(on,h);
c=conv(yirmi,h);

%Grafik
figure
subplot(4,1,1); plot(t,x(1:aralik))
title('Orjinal sinyal')
xlabel('Zaman(Saniye)')
ylabel('Sinyalin G�c�')

subplot(4,1,2); plot(t,a(1:aralik),'--')
title('SNR= 0 dB WGN g�r�lt�l� ve d�rt� tepkisi h olan sisteme sokulmu� sinyal')
xlabel('Zaman(Saniye)')
ylabel('Sinyalin G�c�')

subplot(4,1,3); plot(t,b(1:aralik),'--')
title('SNR= 10 dB WGN g�r�lt�l� ve d�rt� tepkisi h olan sisteme sokulmu� sinyal')
xlabel('Zaman(Saniye)')
ylabel('Sinyalin G�c�')

subplot(4,1,4); plot(t,c(1:aralik),'--')
title('SNR= 20 dB WGN g�r�lt�l� ve d�rt� tepkisi h olan sisteme sokulmu� sinyal')
xlabel('Zaman(Saniye)')
ylabel('Sinyalin G�c�')
end