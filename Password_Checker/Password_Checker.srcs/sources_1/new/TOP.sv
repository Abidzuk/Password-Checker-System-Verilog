`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2025 05:50:38 PM
// Design Name: 
// Module Name: TOP
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


module TOP(
    input logic clock,
    input logic reset,
    input logic en,
    input logic [7:0] data_in,
    output logic [7:0] data_read,
    output logic [7:0] consonants,
    output logic [7:0] vowels,
    output logic check
    );
    
    logic [5:0] out_count;
    logic [5:0] out_reg;
    logic out_vowel, write_en_v, write_en_c;
    
    counter_6b count6b(
    clock,
    reset,
    en,
    out_count    
    );
    
    registru_6b reg6b(
    clock,
    reset,
    out_count,
    out_reg
    );
    
    is_vowel vowel(
    data_in,
    out_vowel
    );
    
    and (write_en_v, out_vowel, en);
    and (wrtie_en_c, ~out_vowel, en);
    
    ram64x8b ram_vowels(
    clock,
    wrtie_en_v,
    out_reg,
    data_in,
    data_read
    );
    
    ram64x8b ram_consonants(
    clock,
    wrtie_en_c,
    out_reg,
    data_in,
    data_read
    );
    
    demux1_2 dut(
    data_in,
    out_vowel,
    consonants,
    vowels
    );
    
    pass_check_fsm pass(
    data_in,
    clock,
    reset,
    en,
    check
    );
    
    
endmodule
