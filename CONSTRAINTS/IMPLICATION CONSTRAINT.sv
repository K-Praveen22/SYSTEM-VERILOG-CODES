class packet;
  rand bit[3:0] addr;
    string addr_range;
  constraint address_range { (addr_range == "small") -> (addr<6);}
endclass

module constr_inside;
  initial begin
    packet pkt;
    pkt=new();
    pkt.addr_range = "small";
    repeat(10) begin
      pkt.randomize();
      $display("addr_range = %s addr =%0d",pkt.addr_range,pkt.addr);
    end
  end
endmodule
