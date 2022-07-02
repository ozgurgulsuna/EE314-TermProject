module debouncer(
	input pb_1,
	input clk,
	output pb_out
);

	wire Q1,Q2,Q2_bar,Q0;

	d_ff d0(clk, pb_1,Q0 );
	d_ff d1(clk, Q0,Q1 );
	d_ff d2(clk, Q1,Q2 );
	
	assign Q2_bar = ~Q2;
	assign pb_out = Q1 & Q2_bar;
endmodule

module d_ff(input DFF_CLOCK, D, output reg Q);

    always @ (posedge DFF_CLOCK) begin
        Q <= D;
    end

endmodule

