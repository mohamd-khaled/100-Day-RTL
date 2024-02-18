module universal_shift_register (clk,rst_n,select,p_din,s_left_din,s_right_din,p_dout);

input            clk;
input            rst_n;  
input      [1:0] select;
input      [3:0] p_din;        // parallel data in 
input            s_left_din;   // serial left data in
input            s_right_din;  // serial right data in

output reg [3:0] p_dout;       // parallel data out 

parameter no_chane     = 2'b00;
parameter shift_right  = 2'b01;
parameter shift_left  = 2'b10;
parameter parallel_out = 2'b11;

always @(posedge clk, negedge rst_n)
begin
    if (~rst_n)
    begin
        p_dout <= 4'b0;
    end
    else
    begin
        case(select)
            no_chane     : p_dout <= p_dout;
            shift_right  : p_dout <= {s_right_din,p_din[3:1]};
            shift_left   : p_dout <= {p_din[2:0],s_left_din};
            parallel_out : p_dout <= p_din;
            default      : p_dout <= p_dout;
        endcase
    end
end

endmodule