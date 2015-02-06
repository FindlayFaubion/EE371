module SRAM_Tester (clock, rst, leds);
	input clock, rst;
	output [7:0] leds;
	wire clk;
	
	reg [7:0] readReg, writeReg, writeData;
	reg regWrite;
	reg [7:0] readData;
	
	
	
	SRAM dut (.readData, .readReg, .writeReg, .writeData, .regWrite);

	fredivider d0 (.clk(clock),.rst(rst),.clk_out(clk));
	
	initial begin	
		readReg = 8'b00000000;
		writeReg = 8'b00000000;
		writeData = 8'b11111111;
		regWrite = 1;
		writeReg = 8'b00000001;
		writeData = 8'b11111110;
				
	end
	
	always @ (posedge clk) begin //clk for slow, clock is full speed
		if (writeData == 0) begin
			writeData = 8'b11111111;
		end
		if (readReg == 128) begin
			readReg = 8'b0;
			writeReg = 8'b0;
		end
		writeData = writeData - 1;
		readReg = readReg + 1;
		writeReg = writeReg + 1;
	
	end
	assign leds = readData;
	
endmodule 


module fredivider(clk,rst,clk_out);
input clk,rst;
output reg clk_out;
reg [25:0] counter;

always @ (posedge clk or negedge rst)
begin
if(!rst)
begin
counter<=25'd0;
clk_out <= 1'b0;
end
else
if(counter==26'd10000000)
begin
counter<=26'd0;
clk_out <= ~clk_out;
end
else
begin
counter<=counter+1;
end
end

endmodule 