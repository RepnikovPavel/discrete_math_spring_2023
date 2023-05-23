%Листинг №26
%Код Хэмминга исправления ошибки замещения разряда
%при передаче семибитового сообщения
%Очищаем рабочее пространство
clear, clc
%Определяем семибитовое сообщение
s=randi(2,1,7)-1;
%В контрольные разряды s1, s2, s4 загружаем
%соответствующие суммы по модуля два
s(1)=mod(??????????????,2);
s(2)=mod(??????????????,2);
s(4)=mod(??????????????,2);
%Передаем сообщение в канале связи, где может
%произойти или не произойти одна-единственная
%ошибка замещения разряда
p=0.5;%Вероятность появления ошибки замещения разряда
s_transfer=s;
if rand<p
    %Ошибка произошла в разряде с номером no_error
    no_error=randi(7);
    %Вносим ошибку в сообщение
    s_transfer(no_error)=~s_transfer(no_error);
end
%Анализируем принятое сообщение s_transfer на предмет
%наличия (отсутствия) ошибки путем вычисления номера J
j1=mod(????????????????????????????????????????????????????,2);
j2=mod(????????????????????????????????????????????????????,2);
j3=mod(????????????????????????????????????????????????????,2);
J=j1+j2*2+j3*2^2;
%Выводим результат работы кода Хэмминга после передачи данных
if J==0
    %Фиксируем отсутствие ошибки замещения разряда
    fprintf('Ошибка замещения разряда не произошла, J = %i\n',J) 
    %Выводим сообщения до и после передачи в канале связи
    fprintf(' s = '), fprintf('%i',s), fprintf('\n')
    fprintf('s_transfer = '), fprintf('%i',s_transfer)
    fprintf('\n')
else
    %Выводим номер разряда, no_error, где произошла ошибка
    %при передачи сообщения, а также номер разряда, вычисленный
    %согласно процедуре Хэмминга, J
    fprintf('Ошибка замещения разряда произошла\n')
    fprintf('no_error = %i, J = %i\n',no_error,J)
    %Выводим сообщения до и после передачи в канале связи
    fprintf(' s = '), fprintf('%i',s), fprintf('\n')
    fprintf('s_transfer = '), fprintf('%i',s_transfer)
    fprintf('\n')
end
