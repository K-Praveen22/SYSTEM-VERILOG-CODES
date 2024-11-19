/*2. Create a typdef Instr_t of struct for the instruction and then declare the memory as array of
Instr_t.*/

module typedef_example;
  typedef struct {
    int opcode;
    int operand1;
    int operand2;
  } Instr_t;

  Instr_t memory[10];

  initial begin
    foreach (memory[i]) begin
      memory[i] = '{opcode: i, operand1: i+1, operand2: i+2};
    end

    foreach (memory[i]) begin
      $display("memory[%0d] = {opcode: %0d, operand1: %0d, operand2: %0d}",
               i, memory[i].opcode, memory[i].operand1, memory[i].operand2);
    end
  end
endmodule
