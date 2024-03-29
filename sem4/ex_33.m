%Листинг №22
%Подсчет числа вариантов в группе предметов, часть
%из которых остается на своих местах, а часть - на чужих
%Очищаем рабочее пространство
clear, clc;
%Определяем параметры задачи
n=5; k=4;
%Запускаем цикл подсчета числа вариантов предметов не
%находящихся на своих местах
% D=zeros(1,k);
% for i=2:k
%  D(i)=i*D(i-1)+(-1)^i;
% end
% N = D(k);

N=factorial(k);
for i=1:k
    N = N + factorial(k-i)*nchoosek(k,i)*((-1)^i);
end

%Умножаем полученное значение на число вариантов расположения
%предметов, находящихся на своих местах и выводим полученный
%результат
N=nchoosek(n+k,n)*N;
N