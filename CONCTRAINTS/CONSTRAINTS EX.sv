// Code your testbench here
// or browse Examples
class Packet;
rand bit [7:0] addr;
rand bit [7:0] data;
constraint addr_c { addr < 128; }
endclass
