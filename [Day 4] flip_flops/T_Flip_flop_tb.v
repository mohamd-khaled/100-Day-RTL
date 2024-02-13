module T_FF_tb;

reg  clk_tb;
reg  rst_n_tb;
reg  T_tb;
wire Q_tb;
wire Q_bar_tb;
  
T_FF T_FF_u(.clk(clk_tb),
.rst_n(rst_n_tb),
.T(T_tb),
.Q(Q_tb),
.Q_bar(Q_bar_tb));

always #2 clk_tb = ~clk_tb;

initial 
begin
    clk_tb = 0; 
    rst_n_tb= 0;
    T_tb = 0;
        
    #3 rst_n_tb = 1;

    #3 T_tb = 1;

    #3 T_tb = 0;

    #3 T_tb = 1;

    #6 rst_n_tb = 0;
end

initial
begin
	$monitor(" clk=%b | T=%b | Q=%b | Q_bar=%b",clk_tb,T_tb,Q_tb,Q_bar_tb);
end

endmodule