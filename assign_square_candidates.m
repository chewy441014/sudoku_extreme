function candidates = assign_square_candidates(candidates,squares,num)
%%%
%Returns the potential matrix after marking certain squares devoid of
%potential placements for a number num. 
%%%

    square_ind = get_square_ind();
    
    len = length(squares);
    temp = candidates(:,:,num);
    %A temporary copy of the potential matrix is made to allow the single
    %indexes to work smoothly. IE candidates(square_ind(squares(i),:),num)
    %does not work as intended. 
    for i = 1:len
        temp(square_ind(squares(i),:)) = 0;
    end
    candidates(:,:,num) = temp;
end