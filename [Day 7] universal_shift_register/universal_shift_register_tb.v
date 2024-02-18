module universal_shift_register_tb ();

reg        clk_tb;
reg        rst_n_tb;  
reg  [1:0] select_tb;
reg  [3:0] p_din_tb;
reg        s_left_din_tb;
reg        s_right_din_tb; 
wire [3:0] p_dout_tb;

universal_shift_register usr (clk_tb,rst_n_tb,select_tb,p_din_tb,s_left_din_tb,s_right_din_tb,p_dout_tb);

always #2 clk_tb = ~clk_tb;

initial
begin
    clk_tb = 0; rst_n_tb = 0;
    #3 rst_n_tb = 1;

    p_din_tb = 4'b1101;
    s_left_din_tb = 1'b1;
    s_right_din_tb = 1'b0;
    
    select_tb = 2'h3; #10;
    select_tb = 2'h1; #20;
    p_din_tb = 4'b1101;
    select_tb = 2'h3; #10;
    select_tb = 2'h2; #20;
    select_tb = 2'h0; #20;
end

endmodule