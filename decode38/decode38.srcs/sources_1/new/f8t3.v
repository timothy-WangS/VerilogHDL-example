`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/24 21:08:33
// Design Name: 
// Module Name: f8t3
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


module f8t3(
    input [7:0] egt_in,
    output reg [7:0] tri_out
    );
    always@(egt_in)
        case(egt_in)
            8'b00000001: tri_out = 8'b00000000;
            8'b00000010: tri_out = 8'b00000001;
            8'b00000100: tri_out = 8'b00000010;
            8'b00001000: tri_out = 8'b00000011;
            8'b00010000: tri_out = 8'b00000100;
            8'b00100000: tri_out = 8'b00000101;
            8'b01000000: tri_out = 8'b00000110;
            8'b10000000: tri_out = 8'b00000111;
            default: tri_out = 8'b00000000;
        endcase
endmodule
