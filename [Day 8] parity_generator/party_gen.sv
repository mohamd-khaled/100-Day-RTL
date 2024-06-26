module parity_gen #(parameter data_width = 8)
(clk,rst,p_data,par_typ,par_bit);

 typedef enum logic {EVEN_par,ODD_par} parity;
input                  clk;
input                  rst;
input [data_width-1:0] p_data;
input  parity          par_typ;

output logic             par_bit;

always @ (posedge clk or negedge rst)
begin
    if(!rst)
    begin
        par_bit <= 'b0 ;
    end
    else
    begin
        case(par_typ)
            EVEN_par : 
            begin                 
                par_bit <= ^p_data  ;     // Even Parity
            end
            ODD_par : 
            begin
                par_bit <= ~^p_data ;     // Odd Parity
            end		
        endcase       	 
    end
end 



endmodule