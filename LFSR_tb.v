`timescale 1ns/10ps
module LFSR_tb;
reg clk; 
reg set;
reg [2:0] data;
wire [2:0] out;

LFSR LFSR_tb(
    .clk(clk), 
    .set(set),
    .data(data), 
    .out(out)
);

initial begin
    clk = 0;
    set = 0;
    data = 3'b110;
end

always #50 clk = ~clk;
initial    #150 set  = 1'b1;
initial    #250 set  = 1'b0;
initial    #2000 $finish;


initial begin
    $dumpfile("LFSR.vcd");
    $dumpvars(0, LFSR_tb);
end

endmodule