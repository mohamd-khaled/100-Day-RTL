module adder_subtracter#(parameter width = 8)
(A,B,C_in,SUB,OUT,Carry);

input  [width-1:0] A;
input  [width-1:0] B;
input              C_in;
input              SUB;
output [width-1:0] OUT;     
output             Carry;

wire [width:0]  C_wire;
reg             not_carry_0;
reg [width-1:0] not_B;

always @(*)
begin
    if(SUB)
    begin
        not_B <= ~B;
        not_carry_0 <= ~C_in;
    end
    else
    begin
        not_B <= B;
        not_carry_0 <= C_in;
    end
end

assign C_wire[0] = not_carry_0;

genvar counter;

generate 
    for (counter=0; counter<width; counter=counter+1) 
      begin
        full_adder full_adder_u
            ( 
              .A(A[counter]),
              .B(not_B[counter]),
              .C_in(C_wire[counter]),
              .sum(OUT[counter]),
              .Carry(C_wire[counter+1])
              );
      end
endgenerate

assign Carry = C_wire[width];

endmodule