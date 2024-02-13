module SR_FF(clk,rst_n,S,R,Q,Q_bar);

input      clk;
input      rst_n;
input      S;
input      R;
output reg Q;
output     Q_bar;

always@(posedge clk, negedge rst_n) 
begin
    if(!rst_n) 
        Q <= 0;
    else 
    begin
      case({S,R})
        2'b00: Q <= Q;    // No change
        2'b01: Q <= 1'b0; // reset
        2'b10: Q <= 1'b1; // set
        2'b11: Q <= 1'bx; // Invalid inputs
      endcase
    end
end

assign Q_bar = ~Q;

endmodule