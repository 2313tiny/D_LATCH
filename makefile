
synthesis: comp run

comp: DLATCH_tb.v DLATCH.v
	@clear
	@iverilog DLATCH.v DLATCH_tb.v -o DLATCH 
	@echo "[DONE]........COMPILE" 
run:
	@vvp DLATCH
	@echo "[DONE]........RUN" 

gtk: DLATCH.vcd
	@gtkwave	DLATCH.vcd
	@echo "[DONE]........gtkwave\n" 
clean:
	rm DLATCH *.vcd
