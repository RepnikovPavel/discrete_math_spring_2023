clear,clc;
p_mod2 = @(x,y)(~x&y|x&~y);
l1 = @(x)(x);
r1 = @(x,y)(p_mod2(1,x&y));
l2 = @(x,y)((~x)|(~y));
r2 = @(x,y)((~x)&(~y));
l3 = @(x,y)(~x|y);
r3 = @(x,y)(~x|y);
XY=[
    0,0;
    0,1;
    1,0;
    1,1
];
for i=1:4
    x_  = XY(i,1);
    y_  = XY(i,2);
    if (l1(x_) == r1(x_,y_))
        fprintf("1)(x,y)=(%d,%d)\n",x_,y_)
    end
end

for i=1:4
    x_  = XY(i,1);
    y_  = XY(i,2);
    if (l2(x_,y_) == r2(x_,y_))
        fprintf("2)(x,y)=(%d,%d)\n",x_,y_)
    end
end

XYZ  = [
    0,0,0;
    0,0,1;
    0,1,0;
    0,1,1;
    1,0,0;
    1,0,1;
    1,1,0;
    1,1,1;
];

for i=1:8
    x_  = XYZ(i,1);
    y_  = XYZ(i,2);
    z_ =  XYZ(i,3);
    if (l3(x_,y_) == r3(z_,y_))
        fprintf("3)(x,y,z)=(%d,%d,%d)\n",x_,y_,z_)
    end
end



