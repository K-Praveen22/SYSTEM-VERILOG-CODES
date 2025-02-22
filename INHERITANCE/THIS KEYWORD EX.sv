class packet;
  bit[31:0]addr;
  bit[31:0]data;
  bit write;
  string pkt_type;
  function new(bit[31:0]addr,dta,bit write,string pkt_type);
    this.addr=addr;
    this.data=data;
    this.write=write;
    this.pkt_type=pkt_type;
    endfunction
  
  function void display();
    $display("-------------------------------");
    $display(" addr = %0h",addr);
    $display(" data = %0h",data);
    $display(" write = %0h",write);
    $display(" pkt_type = %0s",pkt_type);
  endfunction
endclass

module sv_constructor;
  packet pkt;
  initial
    begin
      pkt = new(32'h10,32'hff,1,"GOOD_PACKET");
      pkt.display();
    end
endmodule
