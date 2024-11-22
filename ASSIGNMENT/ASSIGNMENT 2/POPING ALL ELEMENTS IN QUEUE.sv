/*13. Why can’t we use a foreach loop for popping all the elements in a queue?*/

module pop_all_elements_queue;
  int queue[$] = '{1, 2, 3, 4, 5};
 initial begin
    while (queue.size() > 0) begin
      $display("Popped element: %0d", queue.pop_front());
    end
  end
endmodule
