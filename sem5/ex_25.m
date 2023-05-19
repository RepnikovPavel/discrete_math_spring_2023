%Листинг №25
%Построение графов по множеству вершин и ребер
%Очищаем рабочее пространство
clear, clc
%Строим граф 1)
V1 = [1,2,3,4]
E1 = [
    1,2;
    2,3;
    3,4;
    4,1;
]
G1 = make_graph(V1,E1);
subplot(131),plot(G1,'LineWidth',1.5,'MarkerSize',8)
G1.Edges
G1.Nodes

V2 = [1,2,3,4]
E2 = [
    1,2;
    2,4;
    2,3;
    3,4;
    4,1
]
G2 = make_graph(V2,E2);
subplot(132), plot(G2,'LineWidth',1.5,'MarkerSize',8)

V3 = [1,2,3,4,5]
E3 = [
    1,2;
    2,3;
    3,4;
    4,5;
    1,5
]
G3 = make_graph(V3,E3);
subplot(133), plot(G3,'LineWidth',1.5,'MarkerSize',8)

function G = make_graph(V,E)
    G = graph;
    G = addnode(G, length(V));
    for i=1:length(E)
        G = addedge(G, E(i,1),E(i,2));
    end
end



