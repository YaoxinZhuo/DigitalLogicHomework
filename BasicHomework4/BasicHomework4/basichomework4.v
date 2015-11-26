`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:13:04 11/24/2015 
// Design Name: 
// Module Name:    basichomework4 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module basichomework4(IN,EN,Y,Done
    );
	
	input [7:0] IN;
	input EN;
	output reg [2:0] Y;
	output reg Done;
	
	always @ (*)
		begin
			if(~EN)
				begin
					Done = 1;
					if( IN[0] == 1 ) Y = 3'b000;
					else if( IN[1] == 1) Y=3'b001;
					else if( IN[2] == 1) Y=3'b010;
					else if( IN[3] == 1) Y=3'b011;
					else if( IN[4] == 1) Y=3'b100;
					else if( IN[5] == 1) Y=3'b101;
					else if( IN[6] == 1) Y=3'b110;
					else if( IN[7] == 1) Y=3'b111;
					else
						begin
							Y=3'b000;
							Done = 0;
						end
				end
			else
				begin
					Y=3'b000;
					Done = 0;
				end
		end

endmodule
