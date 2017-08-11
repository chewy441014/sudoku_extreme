%%%
%This script is designed to help import puzzles to the solver, and provide
%some graphical tools for setting up the solver. 
%%%

%TODO ask the user to input the type of puzzle, for jigsaw puzzles or 
%custom regions, indicating each region graphically. 

%TODO ask the user to input each number in the puzzle graphically, as this
%will be easier than typing a matrix by hand, or so I believe. 

load('sample_variations');
load('sample_puzzle');

solved = sudoku_solver(sample_puzzle, sample_variations);

%TODO display the puzzle before and after solving. 

%TODO maybe also display some fun graphics about how hard the puzzle was,
%for example, how many numbers could be assigned quickly, how much
%simplification of the potential matrix occured and how many guesses were
%made. 