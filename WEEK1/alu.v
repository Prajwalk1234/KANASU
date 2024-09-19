`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2024 16:24:38
// Design Name: 
// Module Name: alu
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


module mem(
    input [31:0]A,B,  //inputs
    input [3:0]fun,     
    output reg [31:0]Y,  //output 
    output reg c_out
);
reg [31:0]temp;
always @(*) begin
    c_out = 1'b0; 
    case(fun)
        4'b0000: begin 
            temp = A + B;           
            Y = temp[31:0];    
            c_out = temp[32];  
        end
        4'b0001: Y = A - B;       
        4'b0010: Y = A & B;       
        4'b0011: Y = A | B;        
        4'b0100: Y = A ^ B;        
        4'b0101: Y = A << B;        
        4'b0110: Y = A >> B; 
        default: Y = 32'b0;     
    endcase
end
endmodule
