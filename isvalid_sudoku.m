function boolvar = isvalid_sudoku(puzzle)
%%%
%Checks to ensure that the puzzle currently follows the rules. 
%%%

    boolvar = false;
    if size(puzzle) == [9,9]
        boolvar = true;
        expanded_puzzle = zeros(9,9,9);
        for i = 1:9;
            expanded_puzzle(:,:,i) = (puzzle == i);
        end
        a = sum(expanded_puzzle,1); %sums up rows
        b = sum(expanded_puzzle,2); %sums up columns
        c = sum(sum(expanded_puzzle)); %sums up 'planes'
        d = sum(sum(sum(expanded_puzzle))); %sums the whole puzzle
        [x,~] = find(a > 1);
        [x1,~] = find(b > 1);
        [x2,~] = find(c > 9);
        if d < 17;
            boolvar = false;
        elseif ~isempty(x);
            boolvar = false;
        elseif ~isempty(x1);
            boolvar = false;
        elseif ~isempty(x2);
            boolvar = false;
        end
        square_ind = get_square_ind();
        for num = 1:9
            for square = 1:9
                if sum(puzzle(square_ind(square,:)) == num) > 1
                    boolvar = false;
                end
            end
        end
    else
        disp('You need to make a proper puzzle.');
    end
end