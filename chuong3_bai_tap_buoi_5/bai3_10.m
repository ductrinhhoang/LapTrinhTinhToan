function bai3_10(a,b,c)
    if(a == 0)
       if(b==0)
          if(c==0)
             disp('Phuong trinh co vo so nghiem'); 
          else
              disp('Phuong trinh vo nghiem');
          end
       else
           fprintf('Phuong trinh co 1 nghiem x = %f',-c/b);
       end
    else
        delta = b*b - 4*a*c;
        if(delta < 0)
           disp('Phuong trinh vo nghiem');
        else
           Sqrt = sqrt(delta);
           if(Sqrt == 0)
              fprintf('Phuong trinh co nghiem kep x = %f',-b/(2*a)); 
           else
              disp('Phuong trinh co 2 nghiem phan biet\n');
              fprintf('x1 = %f',(-b + Sqrt)/(2*a));
              fprintf('\nx2 = %f',(-b - Sqrt)/(2*a));
           end
        end
    end
    fprintf('\n');
end