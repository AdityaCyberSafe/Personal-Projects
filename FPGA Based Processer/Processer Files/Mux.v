module Mux(
	input wire [3:0] select,
	input wire [15:0] r1,r2,r3,r4,r5,ar,pram,dram,ac,ir,
	output wire [15:0] out
	);
	
	localparam R1   = 4'd1,
				  R2   = 4'd2,
				  R3   = 4'd3,
				  R4   = 4'd4,
				  R5   = 4'd5,
				  AR   = 4'd6,
				  AC   = 4'd7,
				  IR   = 4'd8,
				  Pram = 4'd9,
				  Dram = 4'd10;
				  
				  
	reg [15:0] data;
	assign out = data;
	
	always @(select or r1 or r2 or r3 or r5 or ar or pram or dram or ac or ir)begin
		case(select)
			R1 : data = r1;
			R2 : data = r2;
			R3 : data = r3;
			R4 : data = r4;
			R5 : data = r5;
			AR : data = ar;
			AC : data = ac;
			IR : data = ir;
			Pram : data = pram;
			Dram : data = dram;
			default : data = 0;
		endcase
		end
				  
endmodule		
	