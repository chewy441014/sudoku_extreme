function [rows,col] = check_rows_columns(puzzle1,num)
%%%
%These functions return a vector of integers indicating which rows
%contain number num. 
%%%

    rows = [];
    col = [];

    for i = 1:9
        if sum(puzzle1(i,:) == num) == 1
            rows = [rows, i];
            %why is there no simple append function
        end
        if sum(puzzle1(:,i) == num) == 1
            col = [col, i];
            %why is there no simple append function
        end
    end

    if isempty(rows) || isempty(col)
        disp('Why is your puzzle empty?');
    end

end