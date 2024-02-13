module T_FF(clk,rst_n,T,Q,Q_bar);

input      clk;
input      rst_n;
input      T;
output reg Q;
output     Q_bar;

always@(posedge clk, negedge rst_n) 
begin
    if(!rst_n) 
        Q <= 0;
    else 
    begin
        if(T == 0)
            Q <= Q;    // No change
        else
            Q <= ~Q;   // toggle
    end
end

assign Q_bar = ~Q;

endmodule