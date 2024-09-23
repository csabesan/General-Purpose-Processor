module sseg 
  (
	input [3:0] bcd,
	input neg, 
	output reg [0:6] leds,
	output reg [0:6] sign
  );
  
	always @(*) begin
		if (neg == 1'b0)
			begin
				sign = 7'b1111111;
			end else begin
				sign = 7'b1111110;
			end
	end
	
	always @(*) begin
		case (bcd)
			4'b0000: leds = 7'b0000001;
			4'b0001: leds = 7'b1001111; 
			4'b0010: leds = 7'b0010010; 
			4'b0011: leds = 7'b0000110; 
			4'b0100: leds = 7'b1001100; 
			4'b0101: leds = 7'b0100100; 
			4'b0110: leds = 7'b0100000; 
			4'b0111: leds = 7'b0001111; 
			4'b1000: leds = 7'b0000000; 
			4'b1001: leds = 7'b0001100; 
			4'b1010: leds = 7'b0001000; 
			4'b1011: leds = 7'b1100000; 
			4'b1100: leds = 7'b0110001; 
			4'b1101: leds = 7'b1000010; 
			4'b1110: leds = 7'b0110000; 
			4'b1111: leds = 7'b0111000; 
			default: leds = 7'b1111111; 
		endcase
	end
	
endmodule