module associative_array();
  bit[7:0]array[int];
  int key;
  initial begin
    array = '{7:2,10:4,2:6,9:8,30:10,13:12,5:10};
    $display("elements are = %p",array);
    $display("total elements using num method = %0d",array.num());
    $display("total elements using size method = %0d",array.size());
    array.first(key);
    $display("first element of array = %0d",key);
    array.last(key);
    $display("last element of array =%0d",key);
    array.prev(key);
    $display("previous element of last element is %0d",key);
    key=9;
    array.next(key);
    $display("next ekwment of 9 is %0d",key);
    if(array.exists(5))
      $display("an element exists at index 5");
    else
      $display("an element not exists at index 5");
    array.delete(13);
    $display("elements are = %p",array);
    array.delete();
    $display("size %0d",array.size());
  end
endmodule
