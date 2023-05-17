%Листинг №18
%Подсчет числа призовых комбинаций в игре "6 из 45"
%Очищаем рабочее пространство
clear, clc
%Вводим набор переменных, wc, содержащих число комбинаций, в
%которых имеет место l совпадений, когда l = 0,1,...,6
wc=zeros(1,7);
%Запускаем цикл подсчета призовых комбинаций
for l=0:6
    wc(l+1) = nchoosek(6,l)*nchoosek(39,6-l);
end
%Выводим число комбинаций, в которых l совпадений
Wc=wc(3:7)