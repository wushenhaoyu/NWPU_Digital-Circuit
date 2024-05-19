module v5_1(
	clock,
	Reset_n,
	q
);
	reg	[7:0]  address;
	input	  clock;
	input Reset_n;
	output [7:0]  q;
Rom Rom_inst(
	address,
	clock,
	q);
parameter div_cnt = 50_000_000; 
reg [29:0] cnt;
always@(posedge clock or negedge Reset_n)
	if(!Reset_n)
			address <= 0;
	else
		address <= address + 1;
endmodule