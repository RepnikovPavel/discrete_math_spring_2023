%Листинг №19
%Варианты покупки 10-и пирожных четырех типов
%Очищаем рабочее пространство
clear, clc
%Определяем типы пирожных: наполеон, эклер,
%песочное и картошка
A=['N','E','S','P'];
%Определяем число типов исходных объектов, а также
%объем выборки
n=length(A); k=10;
%Запускаем цикл перебора вариантов покупки 10-и пирожных
l=0;
for k1=0:k
    for k2=0:k
        for k3=0:k
            for k4=0:k 
                %Проверяем условие того, что куплено именно
                %k пирожных
                if k1+k2+k3+k4 == k
                    %С помощью переменной l подсчитываем число
                    %искомых вариантов покупки
                    l=l+1;
                    %Размножаем имя наполеона в выборке, когда k1>0
                    if k1>0
                        A1=char(ones(1,k1)*A(1));
                    else
                        A1=[];
                    end
                    %Размножаем имя эклера в выборке, когда k2>0
                    if k2>0
                        A2=char(ones(1,k2)*A(2));
                    else
                        A2=[];
                    end
                    %Размножаем имя песочного в выборке, когда k3>0
                    if k3>0
                        A3=char(ones(1,k3)*A(3));
                    else
                        A3=[];
                    end
                    %Размножаем имя картошки в выборке, когда k4>0
                    if k4>0
                        A4=char(ones(1,k4)*A(4));
                    else
                        A4=[];
                    end
                    %Формируем итоговую выборку пирожных в покупке,
                    %которая состоит из наборов наполеонов, эклеров,
                    %песочных и картошек
                    C=[A1,A2,A3,A4];
                    %Выводим номер выборки и саму выборку пирожных
                    %в покупке
                    fprintf('l = %i ',l)
                    fprintf('%s',C), fprintf('\n')
                end
            end
        end
    end
end
