clear,clc;
pirs = @(x,y)(~x&~y);
X=[
    0,0;
    0,1;
    1,0;
    1,1
];
number_of_mutches =0;
for i=1:4
    x_  = X(i,1);
    y_  = X(i,2);
    left = pirs(x_, pirs(x_,y_));
    right= pirs(x_,~y_);
    number_of_mutches = number_of_mutches + (left == right);
end
number_of_mutches
