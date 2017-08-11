function squares = check_squares(puzzle1,num)
%%%
%This function checks each of the nine squares for number num. The squares
%are numbered left to right, top to bottom. It returns a vector of integers
%indicating which squares contain number num.
%%%
    squares = [];
    
    square_ind = get_square_ind();
    %Each row of square_ind is the single index for one of nine squares
    
    for i = 1:9
        if sum(puzzle1(square_ind(i,:)) == num) == 1
            squares = [squares, i];
        elseif sum(puzzle1(square_ind(i,:)) == num) > 1
            disp('You dont have a proper puzzle!')
        elseif sum(puzzle1(square_ind(i,:)) == num) < 0
            disp('You dont have a proper puzzle!')
        end
    end
    
    if isempty(squares)
        disp('Why is your puzzle empty?');
    end
end