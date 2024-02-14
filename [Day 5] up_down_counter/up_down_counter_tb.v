module up_down_counter_tb();

reg        clk_tb;
reg        rst_n_tb;
reg        up_tb;
reg        down_tb;
wire [3:0] count_tb;



up_down_counter UDC_U(.clk(clk_tb),
.rst_n(rst_n_tb),
.up(up_tb),
.down(down_tb),
.count(count_tb));

always #5 clk_tb = ~clk_tb;

initial
begin
    clk_tb = 0;
    rst_n_tb = 0;
    up_tb = 0;
    down_tb = 0;

    #10     
    rst_n_tb = 1;
    up_tb = 0;
    down_tb = 0;

    #10     
    rst_n_tb = 1;
    up_tb = 0;
    down_tb = 1;

    #10     
    rst_n_tb = 1;
    up_tb = 0;
    down_tb = 1;

    #10     
    rst_n_tb = 1;
    up_tb = 1;
    down_tb = 0;

    #10     
    rst_n_tb = 1;
    up_tb = 1;
    down_tb = 0;

    #10     
    rst_n_tb = 1;
    up_tb = 1;
    down_tb = 0;

    #10     
    rst_n_tb = 1;
    up_tb = 1;
    down_tb = 0;

    #10     
    rst_n_tb = 1;
    up_tb = 1;
    down_tb = 0;

    #10     
    rst_n_tb = 1;
    up_tb = 1;
    down_tb = 0;

    #10     
    rst_n_tb = 1;
    up_tb = 1;
    down_tb = 1;

    #10     
    rst_n_tb = 1;
    up_tb = 1;
    down_tb = 1;

    #10     
    rst_n_tb = 1;
    up_tb = 0;
    down_tb = 1;

    #10     
    rst_n_tb = 1;
    up_tb = 0;
    down_tb = 1;

    #10     
    rst_n_tb = 1;
    up_tb = 0;
    down_tb = 1;

    #10     
    rst_n_tb = 1;
    up_tb = 0;
    down_tb = 1;


    #10     
    rst_n_tb = 1;
    up_tb = 1;
    down_tb = 0;
    #10     
    rst_n_tb = 1;
    up_tb = 1;
    down_tb = 0;
    #10     
    rst_n_tb = 1;
    up_tb = 1;
    down_tb = 0;
    #10     
    rst_n_tb = 1;
    up_tb = 1;
    down_tb = 0;
    #10     
    rst_n_tb = 1;
    up_tb = 1;
    down_tb = 0;
    #10     
    rst_n_tb = 1;
    up_tb = 1;
    down_tb = 0;
    #10     
    rst_n_tb = 1;
    up_tb = 1;
    down_tb = 0;
    #10     
    rst_n_tb = 1;
    up_tb = 1;
    down_tb = 0;
    #10     
    rst_n_tb = 1;
    up_tb = 1;
    down_tb = 0;
    #10     
    rst_n_tb = 1;
    up_tb = 1;
    down_tb = 0;
    #10     
    rst_n_tb = 1;
    up_tb = 1;
    down_tb = 0;
    #10     
    rst_n_tb = 1;
    up_tb = 1;
    down_tb = 0;
    #10     
    rst_n_tb = 1;
    up_tb = 1;
    down_tb = 0;
    #10     
    rst_n_tb = 1;
    up_tb = 1;
    down_tb = 0;
    #10     
    rst_n_tb = 1;
    up_tb = 1;
    down_tb = 0;
    #10     
    rst_n_tb = 1;
    up_tb = 1;
    down_tb = 0;
end

initial
begin
    $monitor("clk = %b | rst = %b | up = %b | down = %b | count = %d",clk_tb,rst_n_tb,up_tb,down_tb,count_tb); 
end



endmodule

