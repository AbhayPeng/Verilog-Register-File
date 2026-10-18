module rgfile(
input clk,
input [4:0]A1,A2,A3,
input [31:0]wdata,
input wenable,
output [31:0]rd1,rd2
);
reg [31:0] regfile[31:0];
assign rd1=(A1==0)?32'b0:regfile[A1];
assign rd2=(A2==0)?32'b0:regfile[A2];
always@(posedge clk)begin
if(wenable && A3!=0)begin
regfile[A3]<=wdata;
end
end
endmodule
