function bai1_08
    x = [1 4 8]
    y = [2 1 5]
    A = [2 7 9 7 ; 3 1 5 6 ; 8 1 2 5]
    fprintf('1.[x;y"] khong hop le vi khac kich co');
    fprintf('2.[x;y] hop le vi cung kich co');
    [x;y]
    fprintf('3. A(:,[1 4]) khong hop le vi khac kich co');
    fprintf('4. A([2 3],[3 1]) hop le vi chi la goi theo vi tri');
    A([2 3],[3 1])
    fprintf('5. A(:) hop le vi chi la goi theo vi tri');
    A(:)
    fprintf('6. [A;A(end,:)] hop le vi cung kich co');
    [A;A(end,:)]
    fprintf('7. A(1:3,:) hop le vi chi la goi vi tri');
    A(1:3,:)
    fprintf('8. [A;A(1:2,:)] hop le vi cung kich co');
    [A;A(1:2,:)]
end