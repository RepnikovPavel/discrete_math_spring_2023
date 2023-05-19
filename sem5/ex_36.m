%Листинг №30
%Построение случайного полного двудольного графа
%Очищаем рабочее пространство
clear, clc
%Определяем число вершин каждой из долей двудольного
%графа
n=3+randi(3); m=3+randi(3);
%Строим граф
G=graph;
%Вставляем вершины
G=addnode(G, n+m);
%Вставляем ребра двудольного графа
for i=1:n
    for j=(n+1):(n+m)
        G=addedge(G,i,j);
    end
end
%Рисуем граф
g=plot(G,'LineWidth',1.5,'MarkerSize',6);
%Вершины каждой из долей двудольного графа окрашиваем в
%черный и красный цвета
highlight(g,1:n,'NodeColor','k','MarkerSize',10)
highlight(g,(n+1):(n+m),'NodeColor','r','MarkerSize',10)
axis equal
