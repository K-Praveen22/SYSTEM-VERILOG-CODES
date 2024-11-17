module enum_example();
  typedef enum {CAR,
                BIKE,
                JET,
                BOAT,
                SHIP} tar_e;
  tar_e tar1,tar2,tar3;
  
  initial begin
    tar1=CAR;
    tar2=BIKE;
    tar3=JET;
    $display("tar1=%s\ntar2=%s\ntar3=%s",tar1.name(),tar2.name(),tar3.name());
  end
endmodule
