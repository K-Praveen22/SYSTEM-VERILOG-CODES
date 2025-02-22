/*3. write a code for dynamic array, give the value of array using foreach, display the size,
shuffle the array elements.*/
module dynamic_array_example;
  int dyn_array[];

  initial begin
    dyn_array = new[5];

    foreach (dyn_array[i]) begin
      dyn_array[i] = i + 10;  
    end

    $display("Dynamic Array elements:");
    foreach (dyn_array[i]) begin
      $display("dyn_array[%0d] = %0d", i, dyn_array[i]);
    end
    $display("Size of dynamic array: %0d", dyn_array.size());

    dyn_array.shuffle();
    $display("Shuffled Dynamic Array elements:");
    foreach (dyn_array[i]) begin
      $display("dyn_array[%0d] = %0d", i, dyn_array[i]);
    end
  end
endmodule
