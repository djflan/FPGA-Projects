`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/03/2022 08:33:37 PM
// Design Name: 
// Module Name: OrGate
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


module OrGate(
    input SW2,
    input SW3,
    output LD2
    );
    
    assign LD2 = SW2 || SW3;
endmodule
