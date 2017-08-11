function candidates = assign_square_candidates(candidates,squares,num)
    square_ind = get_square_ind();
    
    len = length(squares);
    temp = candidates(:,:,num);
    for i = 1:len
        temp(square_ind(squares(i),:)) = 0;
    end
    candidates(:,:,num) = temp;
end