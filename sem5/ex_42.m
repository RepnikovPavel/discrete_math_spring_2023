%Листинг №32
%Задача о коммивояжере с метрикой Манхеттена
%между городами
%Очищаем рабочее пространство
clear, clc
%Определяем число городов
n=5+randi(5);
%Определяем случайные координаты (x,y) городов
x=rand(1,n); y=rand(1,n);
%Считаем, что коммивояжер начинает объезд городов из
%города номер №1 и возвращается в тот же город №1.
%Определяем все возможные способы объезда городов в
%количестве (n-1)!
C=perms(2:n);
%Подсчитываем расстояние Манхэттена, преодоленное
%коммивояжером для каждого из сценариев объезда
d=zeros(1,size(C,1));
for i=1:size(C,1)
     % current perm-n
     %Выезд из города №1
     d(i)=d(i)+abs(x(1)-x(C(i,1)))+abs(y(1)-y(C(i,1)));
     %Проезд во все последующие города, начиная со второго
     for j=1:(n-2)
         d(i)=d(i)+abs(x(C(i,j))-x(C(i,j+1)))+abs(y(C(i,j))-y(C(i,j+1)));
     end
     %Возвращение в город №1. Цикл объезда завершен
     d(i)=d(i)+abs(x(1)-x(C(i,n-2)))+abs(y(1)-y(C(i,n-2)));
end
%Находим длину оптимального цикла и сам гамильтонов цикл
[d_min,path_min]=min(d);
%Выводим длину оптимального цикла и сам гамильтонов цикл
fprintf('Длина оптимального цикла и сам гамильтонов цикл\n')
fprintf('d_min = %4.2f, path_min:',d_min)
fprintf('%2i',[1,C(path_min,:),1]), fprintf('\n')
%Строим оптимальный гамильтонов граф объезда городов
G=graph; G=addnode(G,n);
G=addedge(G,1,C(path_min,1));
for j=1:(n-2)
 G=addedge(G,C(path_min,j),C(path_min,j+1));
end
G=addedge(G,C(path_min,end),1);
%Рисуем оптимальный гамильтонов граф
g=plot(G,'LineWidth',3.5,'MarkerSize',8,'EdgeColor','k');
set(g,'XData',x), set(g,'YData',y)
%Рисуем красным маркером-точкой начало и конец гамильтонова
%цикла
highlight(g,1,'NodeColor','r','MarkerSize',10)
%Красным пунктиром рисуем все вершины исходного полного графа
for i=1:(n-1)
 for j=(i+1):n
 line([x(i),x(j)],[y(i),y(j)],...
 'LineWidth',0.25,'LineStyle','--','Color','b')
 end
end