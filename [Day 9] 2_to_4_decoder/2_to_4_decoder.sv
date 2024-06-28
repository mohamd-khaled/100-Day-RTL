module decoder_2_4 (data_in,y1,y2,y3,y0);
  
  input [1:0] data_in;
  output logic y1,y2,y3,y0;
  
always @(*)
begin
    case (data_in)
        2'd0: {y0,y1,y2,y3}=4'b1000;
        2'd1: {y0,y1,y2,y3}=4'b0100;
        2'd2: {y0,y1,y2,y3}=4'b0010;
        2'd3: {y0,y1,y2,y3}=4'b0001; 
        default: {y0,y1,y2,y3}=0000;
    endcase
end
endmodule