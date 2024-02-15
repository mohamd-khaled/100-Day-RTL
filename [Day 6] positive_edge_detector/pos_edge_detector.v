module pos_edge_det (sig,clk,edge_det);

input sig;
input clk;

output edge_det;

reg   sig_dly;

always @ (posedge clk) begin
sig_dly <= sig;
end

assign edge_det = sig & ~sig_dly;            
endmodule 
