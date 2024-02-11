module full_adder (A,B,C_in,sum,Carry);

input  A; 
input  B;
input  C_in;
output sum;
output Carry;

assign sum = A ^ B ^ C_in; 
assign Carry = (A & B) | (C_in & A) | (C_in & B);
 

endmodule