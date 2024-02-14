module up_down_counter(clk,rst_n,up,down,count);

input            clk;
input            rst_n;
input            up;
input            down;
output reg [3:0] count;

always @(posedge clk , negedge rst_n)
begin
    if(~rst_n)
    begin
        count <= 4'd0; 
    end    
    else
    begin
        if (up == 1 && down == 0 && count != 4'd15) 
        begin
            count <= count + 1'd1;
        end 
        else if (up == 0 && down == 1 && count != 4'd0)
        begin
            count <= count - 1'd1;
        end 
        else
        begin
            count <= count;
        end       
    end
end

endmodule