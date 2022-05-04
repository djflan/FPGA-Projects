`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Dan Flanigan
// 
// Create Date: 05/03/2022 07:54:17 PM
// Design Name: 
// Module Name: AndGate
// Project Name: 
// Target Devices: ZedBoard
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


module AndGate(
    input a,
    input b,
    output c
);

    assign c = a && b;
endmodule
