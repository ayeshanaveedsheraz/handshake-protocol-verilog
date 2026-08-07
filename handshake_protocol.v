module handshake_protocol(
input clk, rst, ready,
output reg [7:0] data,
output reg valid 
);
always @(posedge clk)
begin
if(!rst)begin
valid <= 1'b0;
data <=8'd0;
end
else
begin
valid <=1'b1;
if(valid && ready)
data <= data + 8'd1;
end
end
endmodule
