`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2026 17:13:19
// Design Name: 
// Module Name: xcompactor8x5
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


module xcompactor8x5(
    input  [7:0] scan_in, 
    output [4:0] scan_out  
    );
    assign scan_out[0] = scan_in[0] ^ scan_in[1] ^ scan_in[2];
    assign scan_out[1] = scan_in[1] ^ scan_in[3] ^ scan_in[5];
    assign scan_out[2] = scan_in[2] ^ scan_in[4] ^ scan_in[6];
    assign scan_out[3] = scan_in[0] ^ scan_in[4] ^ scan_in[7];
    assign scan_out[4] = scan_in[3] ^ scan_in[5] ^ scan_in[6] ^ scan_in[7];

endmodule
