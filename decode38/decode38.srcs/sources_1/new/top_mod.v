`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/24 21:15:47
// Design Name: 
// Module Name: top_mod
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top_mod(
    input mode,
    input [7:0] code_in,
    output reg [7:0] code_out
    );
    wire [7:0] out_connect1;
    wire [7:0] out_connect2;
    f8t3 F8T3(code_in, out_connect1);
    f3t8 F3T8(code_in, out_connect2);
    always@(mode, code_in)
        if (mode)
            begin
                code_out = out_connect1;
            end
        else
            begin
                code_out = out_connect2;
            end
        
endmodule
