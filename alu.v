module alu (
	input clk,
	input [7:0] A,
	input [7:0] B,
	input [3:0] OP,
	input [3:0] student_id,
	output reg Neg,
	output reg [3:0] R1,
	output reg [3:0] R2
  );
  
	reg [7:0] Reg1, Reg2, Result;
  
	always @(posedge clk) begin
		
		Reg1 <= A;
		Reg2 <= B;
		
		case(OP)
			16'b0000000000000001: begin
				// SUM of A and B
				Result <= Reg1 + Reg2;
				Neg <= 1'b0;
			end
         16'b0000000000000010: begin
             // DIFFERENCE of A and B
             Result <= Reg1 - Reg2;
				 Neg <= (Reg2 > Reg1) ? 1'b1 : 1'b0;
         end

         16'b0000000000000100: begin
             // NOT of A
             Result <= ~Reg1;
             Neg <= 1'b0;
         end

         16'b0000000000001000: begin
             // NAND of A and B
             Result <= ~ (Reg1 & Reg2);
             Neg <= 1'b0;
         end

         16'b0000000000010000: begin
             // NOR of A and B
             Result <= ~ (Reg1 | Reg2);
             Neg <= 1'b0;
         end

         16'b0000000000100000: begin
             // AND of A and B
				 
             Result <= Reg1 & Reg2;
             Neg <= 1'b0;
         end

         16'b0000000001000000: begin
             // XOR of A and B
             Result <= Reg1 ^ Reg2;
             Neg <= 1'b0;
         end

         16'b0000000010000000: begin
             // OR of A and B
             Result <= Reg1 | Reg2;
             Neg <= 1'b0;
         end

         16'b0000000100000000: begin
             // XNOR of A and B
             Result <= ~(Reg1 ^ Reg2);
             Neg <= 1'b0;
         end

         default: begin
             // Default case for invalid OP code
             Result <= 8'b00000000; 
             Neg <= 1'b0;
         end
     endcase
	  
	  R1 <= Result[7:4];
	  R2 <= Result[3:0];
	  
	  end
	  
endmodule
			