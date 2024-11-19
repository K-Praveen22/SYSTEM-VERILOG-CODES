 module test;
    int my_array[5] = {1, 2, 3, 4, 5};
    int result;

    initial begin
        result = sum_array(my_array);
        $display("Sum of array elements: %0d", result);
    end
endmodule
