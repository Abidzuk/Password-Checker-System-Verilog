`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2025 04:18:10 PM
// Design Name: 
// Module Name: counter_6b
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


module counter_6b
	(
		input logic clock,
		input logic reset,
		input logic en,
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
		if(en == 1)
			begin
			out <= out + 1;
			end
		else
			begin
			out <= out;
			end
		end	
end    
    
endmodule