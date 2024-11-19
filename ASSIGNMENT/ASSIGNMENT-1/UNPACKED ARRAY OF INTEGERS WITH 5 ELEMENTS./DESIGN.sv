function int sum_array(input int array[5]);
    int sum;
    sum = 0;
    for (int i = 0; i < 5; i++) begin
        sum += array[i];
    end
    return sum;
endfunction
