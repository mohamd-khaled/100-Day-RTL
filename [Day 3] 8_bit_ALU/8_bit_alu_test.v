module alu_tb ();

reg  [3:0] opA_tb;
reg  [3:0] opB_tb;
reg  [2:0] opcode_tb;
wire [7:0] result_tb;

alu alu_u(.opA (opA_tb), 
.opB(opB_tb), 
.opcode(opcode_tb), 
.result(result_tb));

initial //apply input vectors
begin
    //add operation 1 + 2 and 6 + 6
    #0 opA_tb = 4'b0001; opB_tb = 4'b0010; opcode_tb = 3'b000;
    #10 opA_tb = 4'b0110; opB_tb = 4'b0110; opcode_tb = 3'b000;
    //subtract operation 12 - 3 and 13 - 10
    #10 opA_tb = 4'b1100; opB_tb = 4'b0011; opcode_tb = 3'b001;
    #10 opA_tb = 4'b1101; opB_tb = 4'b1010; opcode_tb = 3'b001;
    //multiply operation 12 x 7 and 15 x 3
    #10 opA_tb = 4'b1100; opB_tb = 4'b0111; opcode_tb = 3'b010;
    #10 opA_tb = 4'b1111; opB_tb = 4'b0011; opcode_tb = 3'b010;
    //AND operation
    #10 opA_tb = 4'b1100; opB_tb = 4'b0111; opcode_tb = 3'b011;
    #10 opA_tb = 4'b1101; opB_tb = 4'b1011; opcode_tb = 3'b011;
    //OR operation
    #10 opA_tb = 4'b0101; opB_tb = 4'b1011; opcode_tb = 3'b100;
    #10 opA_tb = 4'b1001; opB_tb = 4'b1010; opcode_tb = 3'b100;
    //NOT operation
    #10 opA_tb = 4'b1001; opcode_tb = 3'b101;
    #10 opA_tb = 4'b0011; opcode_tb = 3'b101;
    //exclusive-OR operation
    #10 opA_tb = 4'b0111; opB_tb = 4'b1011; opcode_tb = 3'b110;
    #10 opA_tb = 4'b1010; opB_tb = 4'b0101; opcode_tb = 3'b110;
    //exclusive-NOR operation
    #10 opA_tb = 4'b0110; opB_tb = 4'b0110; opcode_tb = 3'b111;
    #10 opA_tb = 4'b0011; opB_tb = 4'b1110; opcode_tb = 3'b111;
end
	
initial
begin
	$monitor(" A=%b | B=%b | Opcode = %b | Result=%b",opA_tb,opB_tb,opcode_tb,result_tb);
end




endmodule