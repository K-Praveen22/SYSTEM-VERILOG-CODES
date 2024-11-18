module struc_ex();
  typedef struct {
     string name;
    int age;
    int mark;
  }student_detail;
  student_detail st1,st2;

  initial begin
    st1.name = "praveen";
    st1.age = 25;
    st1.mark = 499;
    
    st2.name = "jean";
    st2.age = 24;
    st2.mark = 489;
    
    $display("Student:Name = %s,age = %0d,mark = %0d",st1.name,st1.age,st1.mark);
    $display("Student:Name = %s,age = %0d,mark = %0d",st2.name,st2.age,st2.mark);
    end
endmodule

