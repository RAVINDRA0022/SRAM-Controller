`timescale 1ns / 1ps


module sram_memory_controller(input clk,rst,rw,[3:0]addr,[7:0]data_in, 
                              output reg [7:0]data_out);

   reg[3:0] mem [15:0];
   
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            data_out <= 8'b0;
        end
        else begin
            if (rw)
                mem[addr] <= data_in; // Write
            else
                data_out <= mem[addr]; // Read
        end
    end
  
  
endmodule
