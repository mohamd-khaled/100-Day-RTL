module adder_subtracter_tb ();
 
  parameter WIDTH = 8;
 
  reg [WIDTH-1:0]  A_tb;
  reg [WIDTH-1:0]  B_tb;
  reg              C_in_tb;
  reg              SUB_tb;
  wire [WIDTH-1:0] OUT_tb;     
  wire             Carry_tb;
   
  adder_subtracter #(.width(WIDTH)) adder_subtracter_u
    (
     .A(A_tb),
     .B(B_tb),
     .C_in(C_in_tb),
     .SUB(SUB_tb),
     .OUT(OUT_tb),
     .Carry(Carry_tb)
     );
 
  initial
    begin
      #10;
      A_tb = 8'h00;
      B_tb = 8'h01;
      C_in_tb = 0;
      SUB_tb = 0;
      #10;
      A_tb = 8'ha0;
      B_tb = 8'h0a;
      C_in_tb = 0;
      SUB_tb = 0;
      #10;
      A_tb = 8'h0a;
      B_tb = 8'h0a;
      C_in_tb = 0;
      SUB_tb = 1;
      #10;
      A_tb = 8'hff;
      B_tb = 8'haa;
      #10;
    end
 
endmodule