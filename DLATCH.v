
// D-latch module(circuit) 
//
module DLATCH(Q, En, D);
	output Q, Qbar; //  Q, or Q_bar
	input En, D;
	
	wire andout_1, andout_2;  

	and AND_1(andout_1, En, ~D);		
	and AND_2(andout_2, En, D);
	
	nor NOR_1(Q, andout_1, Qbar );
	nor NOR_2(Qbar, andout_2, Q);	

endmodule //DLATCH

