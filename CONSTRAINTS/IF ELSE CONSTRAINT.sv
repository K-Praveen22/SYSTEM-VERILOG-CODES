class packet;
  rand bit[3:0] addr;
    string addr_range;
  constraint address_range { if (addr_range == "small")
                                      addr < 6;
                              else
                                      addr > 10 }
endclass   

module constr_if_else;
  initial begin
    packet pkt;
    pkt=new();
    pkt.addr_range = "small";
    repeat(5) begin
      pkt.randomize();
      $display("addr_range = %s addr =%0d",pkt.addr_range,pkt.addr);
    end
    $display("--------------");
    pkt.addr_range = "high";
    repeat(5) begin
      pkt.randomize();
      $display("addr_range = %s addr =%0d",pkt.addr_range,pkt.addr);
    end
  end
endmodule
