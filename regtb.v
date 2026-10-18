`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2026 01:07:18
// Design Name: 
// Module Name: regtb
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


module regtb_tb;
reg clk;
reg [31:0]wdata;
reg [4:0]A1,A2,A3;
reg wenable;
wire [31:0]rd1,rd2;

rgfile dut(
.clk(clk),
.wdata(wdata),
.A1(A1),
.A2(A2),
.A3(A3),
.wenable(wenable),
.rd1(rd1),
.rd2(rd2)
);

always #5 clk=~clk; 
initial begin 
clk=0;
wenable=0;
A1=0;
A2=0;
A3=0;
wdata=0;

#10;
wdata=32'hDDDDAAA0;
wenable=1;
A3=5;
 
#10;

wenable=0;
A1=5;
A2=0;

#10;

$display("time=%0t,Reg5=%0h,Reg0=%0h",$time,rd1,rd2);
$finish;
end 
endmodule
