`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/24 21:08:33
// Design Name: 
// Module Name: f3t8
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


module f3t8(
    input [7:0] tri_in,
    output reg [7:0] egt_out
    );
    always@(tri_in)
        casex (tri_in)
            8'bxxxxx000: egt_out = 8'b00000001;
            8'bxxxxx001: egt_out = 8'b00000010;
            8'bxxxxx010: egt_out = 8'b00000100;
            8'bxxxxx011: egt_out = 8'b00001000;
            8'bxxxxx100: egt_out = 8'b00010000;
            8'bxxxxx101: egt_out = 8'b00100000;
            8'bxxxxx110: egt_out = 8'b01000000;
            8'bxxxxx111: egt_out = 8'b10000000;
            default: egt_out = 8'b00000000;
        endcase
endmodule
