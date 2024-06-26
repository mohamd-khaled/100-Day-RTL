module parity_gen_TB;
 
  //typedef enum logic {EVEN_par,ODD_par} parity;
localparam data_width = 8;
localparam clk_per = 20;
  
logic                  clk;
logic                  rst;
logic [data_width-1:0] p_data;
logic                  par_typ;

logic             par_bit;
  


parity_gen #(.data_width(data_width))
party_gen_u(.*);

always 
begin	
	clk = 1'b1;
	#(clk_per/2);
		
	clk = 1'b0;
	#(clk_per/2);

end 

initial
begin
    // case 1 : reset is on
    rst        = 1'b0;
    p_data     = 8'b10101011;
    par_typ    = 1'b0;
    #(clk_per);
    
    //case 2 : even parity with data have even number of 1s
    rst        = 1'b1;
    p_data     = 8'b10101001;
    par_typ    = 1'b0;
    #(clk_per);
    
    //case 3 : even parity with data have odd number of 1s
    rst        = 1'b1;
    p_data     = 8'b10101101;
    par_typ    = 1'b0;
    #(clk_per);

    //case 4 : odd parity with data have odd number of 1s
    rst        = 1'b1;
    p_data     = 8'b10101101;
    par_typ    = 1'b1;
    #(clk_per);

    //case 5 : odd parity with data have even number of 1s
    rst        = 1'b1;
    p_data     = 8'b10101001;
    par_typ    = 1'b1;
    #(clk_per);
    $finish;
end
  initial
    begin
      $monitor("parity bit = %b,data = %b at time =%0d",  par_bit, p_data, $realtime);
    end 
  
   initial
    begin
    $dumpfile("dump.vcd");
  	$dumpvars(1);
    end
endmodule

