f = @(x) x - 4*sin(x);
%Do f' co 2 nghiem nen f co nhieu nhat 3 nghiem
%Ta tim tat ca cac nghiem bang cach thu cac gia tri cua ham fzero
fprintf('Cac nghiem cua phuong trinh la : \n');
disp(fzero(f, 0));
disp(fzero(f, 2));
disp(fzero(f, -2));