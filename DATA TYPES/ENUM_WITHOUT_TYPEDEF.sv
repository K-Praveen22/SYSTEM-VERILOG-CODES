module enum_ex();
  enum {CARROT,
        BRINJAL,
        POTOTO,
        ONION,
        TOMATO} veg_e;
  
  initial begin
    veg_e=TOMATO;
    $display("Element is %s and its value is %0d",veg_e.name(),veg_e);
     end
endmodule
  
