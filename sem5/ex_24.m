%Листинг №24
%Построение графа по множеству вершин и ребер
%Очищаем рабочее пространство
clear, clc
%Определяем пустой граф
G=graph;
%Определяем количество вершин в графе
Nodes=5; G=addnode(G,Nodes);
%Добавляем из списка ребра в граф
G=addedge(G,1,3);
G=addedge(G,1,5);
G=addedge(G,2,3);
G=addedge(G,2,4);
G=addedge(G,3,4);
G=addedge(G,3,5);
G.Edges
G.Nodes
%Рисуем граф
plot(G,'LineWidth',1.5,'MarkerSize',8)
