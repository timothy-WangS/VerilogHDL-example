`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/18 18:44:33
// Design Name: 
// Module Name: sim_votes
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


module sim_votes(

    );
    reg a,b,c;
    wire f;
    tri_votes voter(a,b,c,f);
    initial
    begin
        a=0;b=0;c=0;
    end
    always #10
        {a,b,c} = {a,b,c}+1;
    initial
    begin
        #100 $finish;
    end
endmodule
