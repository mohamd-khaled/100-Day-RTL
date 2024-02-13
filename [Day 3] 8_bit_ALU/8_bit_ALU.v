module alu (opA, opB, opcode, result);

input      [3:0] opA;
input      [3:0] opB;
input      [2:0] opcode;
output reg [7:0] result;

localparam add  = 3'b000;
localparam sub  = 3'b001;
localparam mul  = 3'b010;
localparam AND  = 3'b011;
localparam OR   = 3'b100;
localparam NOT  = 3'b101;
localparam XOR  = 3'b110;
localparam XNOR = 3'b111;

//perform the operations
always @ (*)
begin
    case (opcode)
        add:  result = opA + opB;
        sub:  result = opA - opB;
        mul:  result = opA * opB;
        AND:  result = opA & opB;
        OR:   result = opA | opB;
        NOT:  result = ~opA;
        XOR:  result = opA ^ opB;
        XNOR: result = ~(opA ^ opB);
    endcase
end
endmodule