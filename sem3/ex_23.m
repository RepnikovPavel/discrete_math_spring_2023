%Листинг №17
%Строим таблицу 27 функций одной переменной в
%трехзначной логике
%Очищаем рабочее пространство
clear, clc
%Определяем набор значений аргументов
x=[0;1;2];
%Находим всевозможные значения функций одной переменной
combs = zeros(3^3,3);
p=0;
for i1=0:2
    for i2=0:2
        for i3=0:2
            p= p+1;
            comb = [i1,i2,i3];
            for j=1:3
                combs(p,j)= comb(j);
            end
        end
    end
end
f = combs';
%Выводим значения всех 27 функций одной переменной
fprintf(' \n%s','f(0)='),fprintf('%2u',f(1,:))
fprintf(' \n%s','f(1)='),fprintf('%2u',f(2,:))
fprintf(' \n%s','f(2)='),fprintf('%2u',f(3,:)), fprintf('\n')
