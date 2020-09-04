//
// Test bench for DLATCH module
//

module DLATCH_tb;
	reg D, En;
	wire Q_value, Qbar_value;
	
	DLATCH dut( .D(D), .En(En),
		    .Q(Q_value));

initial 
	begin
	D = 0; En = 0;
/*	#5 En = 0;  D = 1;
	#5 En = 1;  D = 0;
	#5 En = 0;  D = 1;
	#5 En = 1;  D = 0;
	#5 En = 0;  D = 1;
	#5 En = 1;  D = 0;
	#5 En = 0;  D = 1;
*/
	#3 D = 1; 
	#5 D = 0; 
	#3 D = 1; 
	#20 D = 0;
	#5 D = 1;
	#3 D = 0;
	#2 D = 1;
	#20 D = 0; 	
	
	#10 $finish;
end //initial

//Enable generator
always begin
	#5 En = ~En; 
end

initial 
	begin
	$monitor("simtime = %g, D = %b,En = %b, Q_value = %b",$time, D,En, Q_value);
end //initial

initial 
begin
	$display("\007"); //ring a bell)
	$dumpfile("DLATCH.vcd");
	$dumpvars(0, dut);
end


endmodule
