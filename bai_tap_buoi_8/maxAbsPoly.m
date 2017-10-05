function MAX = maxAbsPoly(f, a, b)
    %f la vecto ham da thuc
    %a, b la doan can xet. Khong nhat thiet a<b
    %Ta se tinh max tri tuyet doi cua f lay a, b lam 2 dau mut
    
    MAX = abs(polyval(f,a));
    if MAX < abs(polyval(f,b))
       MAX = abs(polyval(f,b));
       %Khoi tao MAX bang max(abs(polyval(f,a)), abs(polyval(f,b)))
    end
    if a == b
       %Vi a trung b nen ta da co gia tri can tim
       return
    else
        %MAX tri tuyet doi cua f tren doan a,b chinh la max cac tri tuyet
        %doi cua ham f tai cac nghiem f' = 0 (tren doan [a,b]) va gia tri 
        %tuyet doi f tai 2 dau mut a,b
        der = polyder(f); %Dao ham cua f
        r = roots(der); %Nghiem cua da thuc dao ham f
        m = length(r);
        for i = 1:m
           if (r(i)<0 || r(i)>=0)
               %trong truong hop r(i) la so phuc chua thanh phan ao thi bieu thuc dieu kien r(i)<0 va r(i)>0 luon cho gia tri 0
               if (r(i)-a)*(r(i)-b)<0
                   %chi xet cac nghiem thuc tren trong doan lay a, b lam dau mut
                   if MAX < abs(polyval(f,r(i)))
                      MAX = abs(polyval(f,r(i)))
                   end
               end
           end
        end
    end
end