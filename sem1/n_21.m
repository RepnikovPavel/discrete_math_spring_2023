clear, clc
A = [4,7,5,9,8];
B = [2,9,10,6,5];
AB_cup =  union(A,B)
AB_cap = intersect(A,B)
A_substract_B = setdiff(A,B)
B_substract_A = setdiff(B,A)
symmetric_difference_of_A_and_B = setdiff(AB_cup,AB_cap)
validation_s_d_A_B = setxor(A,B)