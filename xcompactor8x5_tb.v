`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.04.2026 12:34:34
// Design Name: 
// Module Name: xcompactor8x5_tb
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

module xcompactor8x5_tb();
    
    reg [7:0] scan_in;
    wire [4:0] scan_out;

    xcompactor8x5 uut (
        .scan_in(scan_in),
        .scan_out(scan_out)
    );

   
    initial begin
        $monitor("Time=%0t | In=%b | Out=%b", $time, scan_in, scan_out);

        scan_in = 8'b0000_0000; 
        #10;
        
        scan_in = 8'b0000_0000; 
        #10;
        
        scan_in = 8'b0000_0001; 
        #10;

        scan_in = 8'b0000_00x0; 
        #10;

        scan_in = 8'b0000_00x1; 
        #10;

        $display("Simulation Finished");
        $finish;
    end

endmodule