class transaction;
  rand bit oper;
  bit rd,wr;
  bit [7:0]din;
  bit full,empty;
  reg [7:0]data_out;
  bit rst;
  bit clk;
  
  constraint ctrl{oper dist{0:/50,1:/50};}
  
endclass
