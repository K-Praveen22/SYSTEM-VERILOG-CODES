// Code your testbench here
// or browse Examples
class ABC;
rand bit a;
rand bit [1:0] b;
constraint c_ab { a -> b == 3'h3; solve a before b; }
endclass

module tb;
initial begin
ABC abc = new;
for (int i = 0; i < 8; i++) begin
abc.randomize();
  $display("a=%0h b=%0h", abc.a, abc.b);
end
end
endmodule
