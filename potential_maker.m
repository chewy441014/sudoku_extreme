function candidates = potential_maker(puzzle1)
%%%
%Takes a 9x9 puzzle and returns a binary 9x9x9 with the placement of
%candidates
%%%

    candidates = ones(9,9,9);
    for i = 1:9
        [r,c] = check_rows_columns(puzzle1,i);
        s = check_squares(puzzle1,i);
        %These functions return a vector of integers indicating which rows
        %columns and squares contain number i. 
        candidates(r,:,i) = 0;
        candidates(:,c,i) = 0;
        candidates = assign_square_candidates(candidates,s,i);
    end
end