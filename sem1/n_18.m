%Листинг №18
%Генерация всех трехбуквенных слов русского алфавита, не
%начинающихся на буквы "ь", "ъ", "ы"
%Очищаем рабочее пространство
clear, clc
%Определяем русский алфавит
second_cell_source = ['а','б','в','г','д','е','ё','ж','з','и',...
 'й','к','л','м','н','о','п','р','с','т',...
 'у','ф','х','ц','ч','ш','щ','ъ','ы','ь',...
 'э','ю','я'];
first_cell_source = ['а','б','в','г','д','е','ё','ж','з','и',...
 'й','к','л','м','н','о','п','р','с','т',...
 'у','ф','х','ц','ч','ш','щ',...
 'э','ю','я'];
%Определяем множество трехбуквенных слов
a_size = length(second_cell_source);
S=cell(1,a_size^3);
mod_a_size = length(first_cell_source);
%Запускаем тройной цикл, генерирующий трехбуквенные слова,
%не начинающиеся на буквы "ь", "ъ", "ы"
p=0;
for i=1:mod_a_size
    for j=1:a_size
        for k=1:a_size
            s1=first_cell_source(i);
            s2=second_cell_source(j);
            s3=second_cell_source(k);
            S(p+1)= {[s1,s2,s3]};
            p=p+1;
        end
    end
end
true_size = mod_a_size*a_size*a_size;
%Выводим все множество S трехбуквенных слов, а также их число l
disp(S(1:p)), disp(p), disp(true_size)
