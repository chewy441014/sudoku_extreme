function solved = sudoku_solver(puzzle,variations)
%%%
%Returns a solved sudoku puzzle
%puzzle1 should be the 9x9 sudoku or sudoku variant with zeros for blank
%spaces, and the number in each tile corresponding to a single integer in
%the matrix. 
%variations should be a struct with the 'type' of variation and and
%information about that variation needed to solve the puzzle. For example,
%for jigsaw sudoku, the variation struct should contain the indexes of each
%'jigsaw piece' as single indexes for a matrix, perhaps formatted as an
%additional struct. The validity of the puzzle will be checked at first,
%and after each number is inserted (including guesses).
%%%
    if isvalid_sudoku(puzzle)
        disp('This is a valid puzzle.');
    else
        disp('Dont try this puzzle.');
        return
    end
    %Step one, generate the potentials matrix, called candidates
    candidates = potential_maker(puzzle, variations);
    
    %Step five, iterate over step two, three and four until a guess must
    %be made. 
    
    %Step two, look for answers to the puzzle based on the potentials
    %matrix. 
    
    if ~isvalid_sudoku(puzzle)
        disp('Something went wrong. Puzzle is no longer valid.')
        return
    end
    
    %Step three, simplify the candidates matrix based on new answers to the
    %puzzle. 
    
    %Step four, simplify the candidates matrix based on its distribution.
    %For example, if a 3x3 cell has only two or three potential placements
    %for the number three in a linear arrangement, other potential
    %placements in the same row or column are not needed. (There are more
    %advanced techniques as well). 
    
    %Step six, make a guess, calling sudoku_solver on both options. This
    %forks the puzzle into two puzzles running in 'parallel' (parallel
    %processing will not be used for now). One will not succeed. ATM This
    %is hypothetical, I'm not that good at matlab yet. The goal is to only
    %recurse once or twice for even very hard puzzles. 

end