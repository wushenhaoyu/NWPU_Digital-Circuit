module why(
clk,
sel,
outclk
);
input clk;
input sel;
output outclk;

//20ns
parameter cnt1 = 50_000_000;
reg [30:0] cnt_1;
always@(posedge clk)
	if(!sel)
		if (cnt_1 == cnt1)
			cnt_1 <= 0;
		else 
			cnt_1 <= 1 + cnt_1;
	else
		cnt_1 <= 0;
parameter cnt2 = 5_000_000;
reg [30:0] cnt_2;
always@(posedge clk)
	if(sel)
		if (cnt_2 == cnt2)
			cnt_2 <= 0;
		else 
			cnt_2 <= 1 + cnt_2;
	else
		cnt_2 <= 0;
assign outclk = sel ? cnt_2 : cnt_1;


endmodule