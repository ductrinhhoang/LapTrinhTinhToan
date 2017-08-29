a = [1 0 2];
b = [0 2 2];

fprintf("1. Gia tri bieu thuc a = b : \n  "); %Gan gia tri cua vector b cho vector a
a = b;
disp(a);
fprintf("\n");

a = [1 0 2];
fprintf("2. Gia tri bieu thuc a < b : \n   "); %So sanh tung gia tri cua vector a voi gia tri o vi tri tuong ung cua vector b, tra ve 1 vector
disp(a<b);
fprintf("\n");

fprintf("3. Gia tri bieu thuc a < b < a : \n   "); %Thuc hien a < b, roi so sanh vector moi thu duoc voi a
disp(a < b < a);
fprintf("\n");

fprintf("4. Gia tri bieu thuc a < b < b : \n   ");
disp(a < b < b);
fprintf("\n");

fprintf("5. Gia tri bieu thuc a | (a) : \n   "); %Thuc hien phep hoac cua vector a voi gia tri o vi tri tuong ung cua vector a
disp(a | (a));
fprintf("\n");

fprintf("6. Gia tri bieu thuc b & (b) : \n   "); %Thuc hien phep va cua vector b voi gia tri o vi tri tuong ung cua vector b
disp(b | (b));
fprintf("\n");

fprintf("7. Gia tri bieu thuc a=b==a : \n   "); %Thuc hien phep so sanh roi thuc hien phep gan
disp(a=b==a);
fprintf("Gia tri cua a = "); disp(a);
fprintf("\n");

