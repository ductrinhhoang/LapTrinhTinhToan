function C1 = find_c1(syms_list)
C1 = '';
    for i = 1 : size(syms_list,2)
        if(syms_list(i) == ',')
            break;
        end
        C1 = strcat(C1, syms_list(i));
    end
end