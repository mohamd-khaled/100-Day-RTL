module pos_edge_det_tb();

reg sig_tb;
reg clk_tb;

wire edge_det_tb;

pos_edge_det u1(.sig(sig_tb),           
.clk(clk_tb),
.edge_det(edge_det_tb));

always #5 clk_tb = ~clk_tb;

initial begin
    clk_tb <= 0;
    sig_tb <= 0;
    #15 sig_tb <= 1;
    #20 sig_tb <= 0;
    #10 sig_tb <= 1;
    #10 sig_tb <= 0;
end	

endmodule