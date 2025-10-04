`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2025 05:24:50 PM
// Design Name: 
// Module Name: ram_64x8b
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


module ram64x8b
	(
		input logic clock,
		input logic write_en,
		input logic [5:0] addr,
		input logic [7:0] data_write,
		output logic [7:0] data_read
    );

logic [7:0] memorie_efectiva [0:63];

always_ff @(posedge clock)
begin    
    if(write_en == 1)
    	begin
    	memorie_efectiva[addr] <= data_write;
    	data_read <= memorie_efectiva[addr];
    	end 
end
 
endmodule
