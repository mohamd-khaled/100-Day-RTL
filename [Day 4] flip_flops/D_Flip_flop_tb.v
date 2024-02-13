module D_FF_tb;

reg  clk_tb;
reg  rst_n_tb;
reg  D_tb;
wire Q_tb;
  
D_FF D_FF_u(.clk(clk_tb),
.rst_n(rst_n_tb),
.D(D_tb),
.Q(Q_tb));

always #2 clk_tb = ~clk_tb;

initial 
begin
    clk_tb = 0; 
    rst_n_tb= 0;
    D_tb = 0;
        
    #3 rst_n_tb = 1;

    #3 D_tb = 1;

    #3 D_tb = 0;

    #3 D_tb = 1;

    #6 rst_n_tb = 0;
end

initial
begin
	$monitor(" clk=%b | D=%b | Q=%b ",clk_tb,D_tb,Q_tb);
end

endmodule