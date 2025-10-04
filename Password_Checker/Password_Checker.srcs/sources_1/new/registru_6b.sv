`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2025 04:27:22 PM
// Design Name: 
// Module Name: registru_6b
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


module registru_6b
	(
		input logic clock,
		input logic reset,
		input logic [5:0] in,
		output logic [5:0] out
    );
    
always_ff @(posedge clock or posedge reset)
begin
	if(reset == 1)
		begin
		  out <=0;
		end
	else
		begin
			out <= in;
		end
end    

endmodule
