module SR_FF_tb;

reg  clk_tb;
reg  rst_n_tb;
reg  S_tb;
reg  R_tb;
wire Q_tb;
wire Q_bar_tb;
  
SR_FF SR_FF_u(.clk(clk_tb),
.rst_n(rst_n_tb),
.S(S_tb),
.R(R_tb),
.Q(Q_tb),
.Q_bar(Q_bar_tb));

always #2 clk_tb = ~clk_tb;

initial 
begin
    clk_tb = 0; 
    rst_n_tb= 0;
    S_tb = 0;
    R_tb = 0;
 
    #3 rst_n_tb = 1;

    #3 S_tb = 1;
       R_tb = 0;

    #3 S_tb = 0;
       R_tb = 1;

    #3 S_tb = 0;
       R_tb = 0;

    #3 S_tb = 1;
       R_tb = 1;

    #6 rst_n_tb = 0;       
end

initial
begin
	$monitor(" clk=%b | S=%b | R=%b | Q=%b | Q_bar=%b",clk_tb,S_tb,R_tb,Q_tb,Q_bar_tb);
end

endmodule