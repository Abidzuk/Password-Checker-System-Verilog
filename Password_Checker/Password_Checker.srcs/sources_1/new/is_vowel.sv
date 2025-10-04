`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2025 04:34:11 PM
// Design Name: 
// Module Name: is_vowel
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


module is_vowel(
input logic [7:0] data_in,
output logic out
    );
    always_comb 
    begin
        case(data_in)
        "a", "e", "i", "o", "u": out = 1;
        default: out = 0;
        endcase
    end 
    
endmodule
