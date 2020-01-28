%Seçkin Burak Cengiz
%1.Kýsým matlab kodlarý

plot(data)
title('Sinyalin frekans eksenli grafiði')
xlabel('Frekans')
ylabel('Sinyalin Gücü')

figure

zaman1=(1/8000)*length(data);
t1=linspace(0,zaman1,length(data));

plot(t1,data)
title('Sinyalin zaman eksenli grafiði')
xlabel('Zaman (saniye)');
ylabel('Sinyalin Gücü')

figure

zaman2=(1/8000)*2000;
t2=linspace(0,zaman2,2000);

plot(t2,data(1:2000))
title('Sinyalin zaman eksenli (yakýnlaþtýrýlmýþ) grafiði')
xlabel('Zaman (saniye)');
ylabel('Sinyalin Gücü')

disp('------------------------------------------------------')
disp('Sinyalinin matris uzunluðu= ')
uzunluk=length(data);
disp(uzunluk)
disp('Sinyalin örnekleme frekansý (Hz) = ')
disp(fs)
disp('Sinyalin zaman alanýnda toplam süresi (Saniye) = ')
disp(zaman1)
disp('------------------------------------------------------')
