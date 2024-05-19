module why(
clk,
sel,
led
);

input clk;
input sel;
output reg [6:0] led;
wire outclk;
reg [3:0] cnt;
my_clk clk_inst(
.clk(clk),
.sel(sel),
.outclk(outclk)
);
always@(posedge clk)
	if (outclk)
		if(cnt == 4'b1110)
			cnt <= 0;
		else
			cnt <= cnt + 1;
	else
		cnt <= cnt;
reg [3:0] logic;
always@(posedge clk)
	case(cnt)
		4'b0000:logic<=0;
		4'b0001:logic<=2;
		4'b0010:logic<=0;
		4'b0011:logic<=9;
		4'b0100:logic<=8;
		4'b0101:logic<=0;
		4'b0110:logic<=2;
		4'b0111:logic<=1;
		4'b1000:logic<=1;
		4'b1001:logic<=5;
		4'b1010:logic<=14;
		4'b1011:logic<=13;
		4'b1100:logic<=12;
		4'b1101:logic<=11;
		4'b1110:logic<=10;
		default:logic<=0;
		endcase
always@(posedge clk)
	case(logic)
		4'b0000:led<=7'b1000000;
		4'b0001:led<=7'b1111001;
		4'b0010:led<=7'b0100100;
		4'b0011:led<=7'b0110000;
		4'b0100:led<=7'b0011001;
		4'b0101:led<=7'b0010010;
		4'b0110:led<=7'b0000010;
		4'b0111:led<=7'b1111000;
		4'b1000:led<=7'b0000000;
		4'b1001:led<=7'b0010000;
		4'b1010:led<=7'b0001000;
		4'b1011:led<=7'b0000011;
		4'b1100:led<=7'b1000110;
		4'b1101:led<=7'b0100001;
		4'b1110:led<=7'b0000110;
		default:led<=7'b1111111;
		endcase
endmodule

module my_clk(
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
reg clk1,clk2;
always@(posedge clk)
	if(!sel)
		if (cnt_1 == cnt1)
			cnt_1 <= 0;
		else 
			cnt_1 <= 1 + cnt_1;
	else
		cnt_1 <= 0;
		
always@(posedge clk)
	if(cnt_1 == cnt1)
		clk1 <= 1;
	else
		clk1 <= 0;
	
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
		
always@(posedge clk)
	if(cnt_2 == cnt2)
		clk2 <= 1;
	else
		clk2 <= 0;
assign outclk = sel ? clk2 : clk1;


endmodule