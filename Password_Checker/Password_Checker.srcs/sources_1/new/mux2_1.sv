`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2025 05:37:18 PM
// Design Name: 
// Module Name: mux2_1
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


module demux1_2(
    input logic [7:0] data_in,
    input logic sel,
    output logic [7:0] out1,
    output logic [7:0] out0 
    );
    
always_comb
begin 
    case(sel)
        0:begin 
            out0 = data_in;
            out1 = 0;
          end  
        1:begin 
            out0 = 0;
            out1 = data_in;  
          end
    endcase              
end
endmodule
