%Se�kin Burak Cengiz
%2.K�s�m matlab kodlar�

guc=sum(data.^2);
disp('sinyalin g�c� = ')
disp(guc)
%Grafik ��kt�lar�n�n g�r�n�m� i�in de�i�tirilebilir parametreler
grafik_ayari = 80000;
aralik = length(data);
%Frekans� zamana �evirme ve �l�ekleme
zaman=(1/8000)*grafik_ayari;
t=linspace(0,zaman,aralik);

x= data;                            %Orjinal sinyal
sifir = awgn(data,0);       %SNR=0 WGN uygulanm�� sinyal
on = awgn(data,10);        %SNR=10 WGN uygulanm�� sinyal
yirmi = awgn(data,20);   %SNR=20 WGN uygulanm�� sinyal
%Grafik
subplot(4,1,1); plot(t,x(1:aralik))
title('Orjinal sinyal')
xlabel('Zaman(Saniye)')
ylabel('Sinyalin G�c�')

subplot(4,1,2); plot(t,sifir(1:aralik),'--')
title('SNR=0 dB WGN g�r�lt� uygulanm�� sinyal')
xlabel('Zaman(Saniye)')
ylabel('Sinyalin G�c�')

subplot(4,1,3); plot(t,on(1:aralik),'--')
title('SNR=10 dB WGN g�r�lt� uygulanm�� sinyal')
xlabel('Zaman(Saniye)')
ylabel('Sinyalin G�c�')

subplot(4,1,4); plot(t,yirmi(1:aralik),'--')
title('SNR=20 dB WGN g�r�lt� uygulanm�� sinyal')
xlabel('Zaman(Saniye)')
ylabel('Sinyalin G�c�')
