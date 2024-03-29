module D_FF(clk,rst_n,D,Q);

input      clk;
input      rst_n;
input      D;
output reg Q;

always@(posedge clk, negedge rst_n) 
begin
    if(!rst_n) 
        Q <= 0;
    else 
        Q <= D; 
end

endmodule