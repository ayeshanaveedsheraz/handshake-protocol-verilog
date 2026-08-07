module tb_handshake_protocol;
reg clk;
reg rst;
reg ready;
wire [7:0] data;
wire valid;
handshake_protocol uut(
.clk(clk),
.rst(rst),
.ready(ready),
.data(data),
.valid(valid)
); 
always #5 clk = ~clk;
initial begin
clk = 0;
rst = 0;
ready = 0;
#10;
rst = 1;
#10;
ready = 1;
#20;
ready = 0;
#20;
ready = 0;
#20;
ready = 1;
#20;
$monitor("time = %0t  rst =%b   ready = %b   valid = %b   data = %d", $time, rst,ready,valid,data);
$finish;
end
endmodule
