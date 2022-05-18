module LFSR (clk, set, data, out);
    input clk, set;
    input [2:0] data;
    output reg [2:0] out;
    reg r_xor;
    always @(posedge clk) begin
        if(set)
            out <= data;
        else 
            out <= {out[1], out[0], out[2]^out[0]};
    
    end 
 
endmodule
