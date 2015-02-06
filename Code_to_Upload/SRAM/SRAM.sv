`timescale 1 ps / 100 fs

// we have a 128 long array of  bit registers
module SRAM(readData, readReg, writeReg, writeData, regWrite);
	
	input [7:0] readReg;
	input [7:0] writeReg;
	input [7:0] writeData;
	input regWrite;
	output reg [7:0] readData;
	
	reg [127:0][7:0] regs;
	
	integer i;
	initial 
		for(i=0; i<8; i++) begin: bits
			regs[0][i] = 0;
	end
	
	//assign regs[0] = 8'b00000000;
	
	always @(*)
		begin
		if (regWrite == 1)
			regs[writeReg] = writeData;
			
		readData = regs[readReg];
	end
	
	
endmodule

module SRAM_testbench;

	parameter ClockDelay = 5000;
	
	reg [7:0] readReg, writeReg, writeData;
	reg regWrite;
	wire [7:0] readData;
	reg clk;
	
	SRAM dut (.readData, .readReg, .writeReg, .writeData, .regWrite);
	
	integer i;
	initial clk = 0;
	always begin
		#(ClockDelay/2); 
		clk = ~clk;
	end

	initial begin
		// Try to write the value 0xA0 into register 0.
		// Register 0 should always be at the value of 0.
		regWrite <= 0;
		readReg <= 0;
		writeReg <= 0;
		writeData <= 32'hA0;				@(posedge clk);
		regWrite <= 1;					@(posedge clk);
		
		// Write a value into each  register.
		for (i=1; i<32; i=i+1) begin
			regWrite <= 0;
			readReg <= i-1;
			writeReg <= i;
			writeData <= i*32'h01020408;	@(posedge clk);
			regWrite <= 1;				@(posedge clk);
		end

		// Go back and verify that the registers
		// retained the data.
		for (i=0; i<32; i=i+1) begin
			regWrite <= 0;
			readReg <= i-1;
			writeReg <= i;
			writeData <= i*32'h100+i;		@(posedge clk);
			regWrite <= 1;				@(posedge clk); ///
		end
		$stop;
	end
endmodule