function bai1_10()
    x = [3, 15, 9, 12, -1, 0, -12, 9, 6, 1]
    fprintf('1. Viet lenh chuyen cac gia tri duong thanh 0');
    z = x;
    for i = 1:size(x,2)
       if(x(i) > 0) x(i) = 0;
       end
    end
    x
    x = z;
    fprintf('2. Chuyen cac boi so cua 3 thanh 3');
    for i = 1:size(x,2)
       if(x(i) == 3*floor(x(i)/3)) x(i) = 3;
       end
    end
    x
    x = z;
    fprintf('3. Nhan cac gia tri chan voi 5');
    for i = 1:size(x,2)
       if(x(i) == 2*floor(x(i)/2)) x(i) = x(i)*5;
       end
    end
    x
    x = z;
    fprintf('4. Gan cho vector y cac gia tri lon hon 10 cua x');
    y = x(x>10)
    fprintf('5. Chuyen cac gia tri nho hon trung binh thanh 0');
    TB = sum(x,2)/size(x,2)
    for i = 1:size(x,2)
       if(x(i) < TB) x(i) = 0;
       end
    end
    x
end