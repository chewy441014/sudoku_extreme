function square_ind = get_square_ind()
    a = 1:3;
    b = 4:6;
    c = 7:9;
    
    square_ind = zeros(9,9);
    square_ind(1,:) = [a,9+a,9*2+a];
    square_ind(2,:) = [9*3+a,9*4+a,9*5+a];
    square_ind(3,:) = [9*6+a,9*7+a,9*8+a];
    square_ind(4,:) = [b,9+b,9*2+b];
    square_ind(5,:) = [9*3+b,9*4+b,9*5+b];
    square_ind(6,:) = [9*6+b,9*7+b,9*8+b];
    square_ind(7,:) = [c,9+c,9*2+c];
    square_ind(8,:) = [9*3+c,9*4+c,9*5+c];
    square_ind(9,:) = [9*6+c,9*7+c,9*8+c];
end