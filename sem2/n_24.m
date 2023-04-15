%букв abcd
%Очищаем рабочее пространство
clear, clc
%Определяем четыре выбранные буквы
s=['a','b','c','d'];
%Вычисляем все возможные перестановки четырех номеров
ps=perms([1,2,3,4]);
%Выводим все возможные перестановки четырех букв
disp('Все возможные перестановки')
for i=1:24
    disp(ps(i,:))
end
%Ищем все группы элементов носителя, связанных
%циклической перестановкой
f=ones(1,24); k=0; G=cell(1,6);
%Выбираем случайный номер перестановки из всего набора
i=randi(24);
%Запускаем цикл, который выполняется до тех пор, пока
%не учтены все перестановки
while sum(f)>0
    if f(i)
        %Генерируем не учтенную группу циклических
        %перестановок
        g1=ps(i,:);
        g2=circshift(g1,1);
        g3=circshift(g2,1);
        g4=circshift(g3,1);
        %Исключаем те перестановки, которые уже учтены
        for j=1:24
            if sum(ps(j,:)==g1)==4
                f(j)=0;
            end
            if sum(ps(j,:)==g2)==4
                f(j)=0;
            end
            if sum(ps(j,:)==g3)==4
                f(j)=0;
            end
            if sum(ps(j,:)==g4)==4
                f(j)=0;
            end
        end
        %Собираем группы циклических перестановок
        k=k+1; G(k)={[g1;g2;g3;g4]};
    end
    %Случайно выбираем номер перестановки, которая
    %еще не учтена
    i=randi(24);
end
%Выводим все шесть групп циклических перестановок
T=table(G{1},G{2},G{3},G{4},G{5},G{6}) 