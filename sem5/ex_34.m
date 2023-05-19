%Листинг №29
%Построение дерева геодезических из вершины 1
%Очищаем рабочее пространство
clear, clc
%Строим граф
V = [1,2,3,4]
E = [
    1,2;
    2,3;
    2,4;
    3,4;
    1,4;
]
G = make_graph(V,E);
%Строим маршруты из вершины 1 в вершины 2, 3, 4
p12=shortestpath(G,1,2)
p13=shortestpath(G,1,3)
p14=shortestpath(G,1,4)

function G = make_graph(V,E)
    G = graph;
    G = addnode(G, length(V));
    for i=1:length(E)
        G = addedge(G, E(i,1),E(i,2));
    end
end
