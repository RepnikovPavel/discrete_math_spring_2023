%Листинг №29
%Процедура шифрования с открытым ключом и продвинутой
%длиной секретного ключа шифрования
%Очищаем рабочее пространство
clear, clc
%Находим простое число p, которое следует за случайным числом
p=nextprime(str2sym(Rnd_str(52)));
%Находим простое число q, которое следует за случайным числом
q=nextprime(p+1);
%Выводим числа p и q, а также число цифр в них
Length_p=length(char(p)); fprintf('Length_p = %i\n',Length_p)
fprintf('p = %s\n',p)
Length_q=length(char(q)); fprintf('Length_q = %i\n',Length_q)
fprintf('q = %s\n',q)
%Находим первое число открытой части ключа шифрования
n=p*q;
%Находим второе число открытой части ключа, которое является
%простым числом, следующим за случайным числом
e=nextprime(p+1);
%Находим и выводим открытую часть ключа шифрования
fprintf('Открытая часть ключа шифрования\n')
Length_n=length(char(n));
fprintf('Length_n = %i\n',Length_n), fprintf('n: %s\n',n)
Length_e=length(char(e));
fprintf('Length_e = %i\n',Length_e), fprintf('e: %s\n',e)
%Вычисляем (p-1)*(q-1)
f=(p-1)*(q-1);
%Находим и выводим закрытую часть ключа шифрования, используя
%расширенный алгоритм Евклида, встроенный в MATLAB-функцию gcd
[g,u,v]=gcd(e,f);
if u>0
 d=u;
else
 d=u+f;
end
%Выводим длину закрытой части ключа шифрования и саму закрытую
%часть ключа
if mod(d*e,f)==1
    fprintf('Закрытая часть ключа шифрования\n')
    Length_d=length(char(d));
    fprintf('Length_d = %i\n',Length_d)
    fprintf('d: %s\n',d)
end
%Определяем случайную цепочку цифр подлежащей шифрованию
S=Rnd_str(50);
%Определяем зашифрованное C и расшифрованное P сообщения
C=powermod(S,e,n); P=powermod(C,d,n);
fprintf('Определяем зашифрованное сообщения\n')
fprintf('C = %s\n',C)
fprintf('Определяем исходное и расшифрованное сообщения\n')
fprintf('S = %s\n',S), fprintf('P = %s\n',P)
%Определяем функцию, которая генерирует случайное число,
%имеющее заданное число цифр
function s=Rnd_str(n)
    s=[];s=[s,num2str(randi(9))];
    for i=1:n
        s=[s,num2str(randi(10)-1)];
    end
end
