`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2024 12:13:31
// Design Name: 
// Module Name: mem_tb
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
module mem_tb();
reg clk,rst,wr,rd;
reg [7:0]Datain;
reg [3:0]address;
//reg [7:0]memory[0:10];
wire [7:0]Dataout;
mem U0(.clk(clk),.rst(rst),.wr(wr),.rd(rd),.address(address),.Datain(Datain),.Dataout(Dataout));
initial
begin
#10 clk=0;
#10 rst=0;address=4'b0011;wr=1;rd=0;Datain=8'b00001111;
#10 rst=0;address=4'b0011;wr=0;rd=1;
#10 rst=0;address=4'b0011;wr=1;rd=1;
#10 rst=0;address=4'b0011;wr=0;rd=0;
#10 rst=0;address=4'b0111;wr=0;rd=1;
#10 rst=0;address=4'b1111;wr=1;rd=0;Datain=8'b00011111;
#10 rst=1;
#20 $finish;
end
always #5 clk=~clk;
endmodule
