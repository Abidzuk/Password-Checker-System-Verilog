`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2025 06:13:16 PM
// Design Name: 
// Module Name: TOP_TB
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


module TOP_TB;

    logic clk, rst, en;
    logic [7:0] data_in;
    logic check;
    logic [7:0] vowels, consonants, data_read;

    initial begin
    clk = 0;
    forever #1 clk = ~clk;
    end    

    initial begin
        rst = 1;
        en = 0;
        data_in = 0;

        #5 rst = 0;
           en = 1;
        //first password
         send_char("a");
         send_char("b");
         send_char("c");
         send_char("d");
         send_char("e");
            
         data_in = 0;
         rst = 1;
         #10 rst = 0;
        
        //second password
         send_char("a");
         send_char("b");
         send_char("i");
         send_char("d");
         send_char("n");
         
         data_in = 0;
         rst = 1;
         #10 rst = 0;
         
         //third password
         send_char("a");
         send_char("b");
         send_char("n");
         send_char("d");
         send_char("i");

        #5 $stop();
    end
    
    TOP dut (
    clk,
    rst,
    en,
    data_in,
    data_read,
    vowels,
    consonants,
    check
    );

    task send_char(input [7:0] c);
        begin
            data_in = c;
            #5;
        end
    endtask

endmodule


