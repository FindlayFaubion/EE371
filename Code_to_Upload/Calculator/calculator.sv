module calculator(func, op, rst, enter, clock, leds);


input [1:0] func, op;
input rst, enter, clock;

output reg [7:0] leds;

reg [7:0] out;
reg [7:0] add_out, sub_out, mult_out, div_out, readData, readReg, writeData, writeReg, A, B, leds_out;
wire regWrite, CO;


SRAM(.readData(readData), .readReg(readReg), .writeReg(writeReg), .writeData(writeData), .regWrite(regWrite));

adder_8b a0 (.CO(CO), .S(add_out), .CI(0), .A(A), .B(B), .clk(clk), .rst(rst));	//adder
adder_8b s0 (.CO(CO), .S(sub_out), .CI(1), .A(A), .B(!B), .clk(clk), .rst(rst)); //subtractor
multiplication m0 (.product(mult_out), .multiplier(A), .multiplicand(B));			//multiplier
divider(.Q(div_out[3:0]), .Dividend(A), .Divisor(B), .clk(clk), .remainder(div_out[7:4]));	//divider

integer i;
integer delay;

always @ (posedge enter) begin
	if (func == 2'b01) begin
		regWrite = 1;

		for (i=0; i<32; i++) begin
			writeReg = i;
			writeData = i;
			for (delay = 0; delay <4999; delay ++) 
			begin end
		end
		regWrite = 0;
	end
		
	if (func == 2'b10) begin
		for (i=0; i<16; i++) begin 
			readReg = i;
			A = readData;
			for (delay = 0; delay <4999; delay ++)
			begin end
			readReg = 16 + i;
			B = readData;
			for (delay = 0; delay <4999; delay ++)
			begin end
			if (op == 2'b00)
				out = add_out;
			else if (op == 2'b01)
				out = sub_out;
			else if (op == 2'b10)
				out = mult_out;
			else if (op == 2'b11)
				out = div_out;
				
			writeReg = i + 32;
			writeData = out;
			for (delay = 0; delay <4999; delay ++)
			begin end
		end 
		

	end
	
	if (func == 2'b10) begin
		for (i=0; i<16; i++) begin
			readReg = i + 32;
			leds_out = readData;
			for (delay = 0; delay <4999; delay ++)
			begin end
		end		
	end 
end

assign leds = leds_out;

endmodule 