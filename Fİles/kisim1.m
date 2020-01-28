%Se�kin Burak Cengiz
%1.K�s�m matlab kodlar�

plot(data)
title('Sinyalin frekans eksenli grafi�i')
xlabel('Frekans')
ylabel('Sinyalin G�c�')

figure

zaman1=(1/8000)*length(data);
t1=linspace(0,zaman1,length(data));

plot(t1,data)
title('Sinyalin zaman eksenli grafi�i')
xlabel('Zaman (saniye)');
ylabel('Sinyalin G�c�')

figure

zaman2=(1/8000)*2000;
t2=linspace(0,zaman2,2000);

plot(t2,data(1:2000))
title('Sinyalin zaman eksenli (yak�nla�t�r�lm��) grafi�i')
xlabel('Zaman (saniye)');
ylabel('Sinyalin G�c�')

disp('------------------------------------------------------')
disp('Sinyalinin matris uzunlu�u= ')
uzunluk=length(data);
disp(uzunluk)
disp('Sinyalin �rnekleme frekans� (Hz) = ')
disp(fs)
disp('Sinyalin zaman alan�nda toplam s�resi (Saniye) = ')
disp(zaman1)
disp('------------------------------------------------------')
