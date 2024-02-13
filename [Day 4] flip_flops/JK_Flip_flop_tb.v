module JK_FF_tb;

reg  clk_tb;
reg  rst_n_tb;
reg  J_tb;
reg  K_tb;
wire Q_tb;
wire Q_bar_tb;
  
JK_FF JK_FF_u(.clk(clk_tb),
.rst_n(rst_n_tb),
.J(J_tb),
.K(K_tb),
.Q(Q_tb),
.Q_bar(Q_bar_tb));

always #2 clk_tb = ~clk_tb;

initial 
begin
    clk_tb = 0; 
    rst_n_tb= 0;
    J_tb = 0;
    K_tb = 0;
 
    #3 rst_n_tb = 1;

    #3 J_tb = 1;
       K_tb = 0;

    #3 J_tb = 0;
       K_tb = 1;

    #3 J_tb = 0;
       K_tb = 0;

    #3 J_tb = 1;
       K_tb = 1;

    #6 rst_n_tb = 0;       
end

initial
begin
	$monitor(" clk=%b | J=%b | K=%b | Q=%b | Q_bar=%b",clk_tb,J_tb,K_tb,Q_tb,Q_bar_tb);
end

endmodule