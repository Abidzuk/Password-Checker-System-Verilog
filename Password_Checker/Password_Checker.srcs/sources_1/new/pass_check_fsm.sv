`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2025 05:05:45 PM
// Design Name: 
// Module Name: pass_check_fsm
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


module pass_check_fsm(
    input logic [7:0] data_in,
    input logic clock,
    input logic reset,
    input logic en,
    output logic pass_ok
    );
    
    string pass = "abidn";
    int index;
    
    always_ff @(posedge clock or posedge reset) 
    begin
        if(reset == 1)
        begin
            index <= 0;
            pass_ok <= 0;
        end
            else
            begin
                if(en == 1)
                begin
                    if(data_in == pass[index])
                    begin
                        index <= index + 1; 
                    if(index == 4)
                        pass_ok = 1;
                    end
                    else
                        pass_ok <= 0;
                end
                else
                    pass_ok <= 0;
            end    
    end

endmodule
