module fsm
  (
	input clk,
	input data_in,
	input reset,
	output reg [3:0] student_id,
	output reg [3:0] current_state
  );
  
	
	localparam s0 = 4'd0;
   localparam s1 = 4'd1;
   localparam s2 = 4'd2;
   localparam s3 = 4'd3;
   localparam s4 = 4'd4;
   localparam s5 = 4'd5;
   localparam s6 = 4'd6;
   localparam s7 = 4'd7;
   localparam s8 = 4'd8;
	 
	reg [3:0] yfsm;
	 
	always @(posedge clk or posedge reset) begin
		if(reset) begin
			yfsm <= s0;
		end else begin
			case (yfsm)
				s0: yfsm <= (data_in == 1) ? s1 : s0;
            s1: yfsm <= (data_in == 1) ? s2 : s1;
            s2: yfsm <= (data_in == 1) ? s3 : s2;
            s3: yfsm <= (data_in == 1) ? s4 : s3;
            s4: yfsm <= (data_in == 1) ? s5 : s4;
            s5: yfsm <= (data_in == 1) ? s6 : s5;
            s6: yfsm <= (data_in == 1) ? s7 : s6;
            s7: yfsm <= (data_in == 1) ? s8 : s7;
            s8: yfsm <= (data_in == 1) ? s0 : s8;
            default: yfsm <= s0;
			endcase
		end
	end
	
   always @(*) begin
       case (yfsm)
           s0: begin
               current_state = 4'b0000;
               student_id = 4'b0101; // 5
           end
           s1: begin
               current_state = 4'b0001;
               student_id = 4'b0000; // 0
           end
           s2: begin
               current_state = 4'b0010;
               student_id = 4'b0001; // 1
           end
           s3: begin
               current_state = 4'b0011;
               student_id = 4'b0001; // 1
           end
           s4: begin
               current_state = 4'b0100;
               student_id = 4'b0111; // 7
           end
           s5: begin
               current_state = 4'b0101;
               student_id = 4'b0110; // 6
           end
           s6: begin
               current_state = 4'b0110;
               student_id = 4'b1001; // 9
           end
           s7: begin
               current_state = 4'b0111;
               student_id = 4'b0010; // 2
           end
           s8: begin
               current_state = 4'b1000;
               student_id = 4'b0011; // 3
           end
           default: begin
               current_state = 4'b0000;
               student_id = 4'b0000;
           end
       endcase
   end

endmodule 		
				