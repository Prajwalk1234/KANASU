`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2024 12:09:01
// Design Name: 
// Module Name: mem
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


`timescale 1ns / 1ps
module mem(clk,rst,wr,rd,,address,Datain,Dataout);
input clk,rst,wr,rd;
input [7:0]Datain;
input [3:0]address;
reg [7:0] memory[0:10];
output reg[7:0]Dataout;
always@(posedge clk)
begin
if(rst)
begin
memory[address]=8'b0;
end
else
begin
case({wr,rd})
2'b10:memory[address]=Datain;
2'b01:Dataout=memory[address];
default:Dataout=8'bz;
endcase
end
end
endmodule
