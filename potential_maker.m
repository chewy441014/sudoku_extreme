function candidates = potential_maker(puzzle,variations)
%%%
%Takes a 9x9 puzzle and returns a binary 9x9x9 with the placement of
%candidates. (I do assume that rows and columns will always be a part of
%the game though).
%%%
    
    candidates = ones(9,9,9);
    for i = 1:9
        [r,c] = check_rows_columns(puzzle,i);
        candidates(r,:,i) = 0;
        candidates(:,c,i) = 0;
        if variations.Normal == 1
            s = check_squares(puzzle,i);        
            candidates = assign_square_candidates(candidates,s,i);
        else
            %Add the functions for each case of sudoku variant. 
        end
    end
end