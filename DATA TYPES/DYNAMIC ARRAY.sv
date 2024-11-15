module dynamic_array_example;
  int dyn_arr[];
  initial begin
    $display("default size of dyn_arr=%0d",dyn_arr.size());
    dyn_arr = new[3]('{0,1,2});
    $display ("size of an dyn_arr %0d",dyn_arr.size());
    
    dyn_arr=new[8](dyn_arr);
    foreach(dyn_arr[i])
      $display("dyn_arr[%0d]=%0d",i,dyn_arr[i]);
    dyn_arr = new[5];
    $display ("size of an dyn_arr %0d",dyn_arr.size());
    
  end
endmodule

