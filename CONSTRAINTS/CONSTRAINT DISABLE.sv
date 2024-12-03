
class packet;
rand bit [3:0] addr;
rand bit [3:0]data;
constraint addr_c{data <=20;}
endclass

module cons;
packet pkt=new();
initial begin
repeat(5) begin
pkt.randomize();
  pkt.addr_c.constraint_mode(0);
$display("addr=%d data=%d",pkt.addr,pkt.data);
end
end
endmodule
