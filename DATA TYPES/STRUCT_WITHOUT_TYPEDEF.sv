module struct_ex;
  struct {
     string name;
    int roll_no;
    int mark;
  }student_detail;
  
  initial begin
    student_detail.name = "sethu";
    student_detail.roll_no = 24;
    student_detail.mark = 420;
    
    $display("Student: Name = %s,roll_no = %0d,mark = %0d",student_detail.name,student_detail.roll_no,student_detail.mark);
  end 
endmodule

