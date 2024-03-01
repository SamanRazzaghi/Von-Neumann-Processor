# Von Neumann Processor

- this file contains a base processor with a Von Neumann architecture that handles 25 different functions.
  
- Operator__________OPcode in HEX____________Description
- AND_______________0 OR 8___________________M & AC
- ADD_______________0 OR 9___________________M + AC
- LDA_______________2 OR A___________________load AC from M
- STA_______________3 OR B___________________save AC in M
- BUN_______________4 OR C___________________branch to M
- BSA_______________5 OR D___________________save return address to M and go to M + 1
- ISZ_______________6 OR E___________________add 1 to M and if its 0 skip the next register
- CLA_______________7800_____________________clear AC
- CLE_______________7400_____________________clear E
- CMA_______________7200_____________________complement AC
- CME_______________7100_____________________complement E
- CIR_______________7080_____________________rotate AC and E to right
- CIL_______________7040_____________________rotate AC and E to left
- INC_______________7020_____________________add 1 to AC
- SPA_______________7010_____________________skip a register if AC is positive
- SNA_______________7008_____________________skip a register if AC is negative
- SZA_______________7004_____________________skip a register if AC is zero
- SZE_______________7002_____________________skip a register if E is zero
- HLT_______________7001_____________________halt
- INP_______________F800_____________________get data from input and set the flag bit to zero
- OUT_______________F400_____________________send data to output and zet the flag bit to zero
- SKI_______________F200_____________________skip a register if input flag is 1
- SKO_______________F100_____________________skip a register if output flag is 1
- ION_______________F080_____________________interupt on
- IOF_______________F040_____________________interupt off

#Sample Programs in Memory

 you can replace the memory code with these samples to test the CPU
 
- input(A),A=A+[M[M[B]]],print(A)
  //interupt
		RAM[0]=16'h0000;
		RAM[1]=16'hf200;
		RAM[2]=16'h4007;
		RAM[3]=16'hf800;
		RAM[4]=16'h3040;
		RAM[5]=16'h7800;
		RAM[6]=16'h4034;
		RAM[7]=16'hf100;
		RAM[8]=16'h4001;
		RAM[9]=16'h2040;
		RAM[10]=16'hf400;
		RAM[11]=16'h7800;
		RAM[12]=16'h403c;
		for(i=13;i<50;i=i+1)
			RAM[i]=0;
		//main
		RAM[50]=16'hf080;
		RAM[51]=16'h2043;
		RAM[52]=16'h7004;
		RAM[53]=16'h4033;
		RAM[54]=16'hf040;
		RAM[55]=16'h2040;
		RAM[56]=16'h9041;
		RAM[57]=16'h3040;
		RAM[58]=16'hf080;
		RAM[59]=16'h2043;
		RAM[60]=16'h7004;
		RAM[61]=16'h403b;
		RAM[62]=16'hf040;
		RAM[63]=16'h7001;
		RAM[64]=16'h0000;
		RAM[65]=16'h0042;
		RAM[66]=16'h0003;
		RAM[67]=16'h0001;
		for(i=68;i<128;i=i+1)
			RAM[i]=0;
- p=x*y
  //interupt
		for(i=0;i<50;i=i+1)
			RAM[i]=0;
		//main		
		RAM[50]=16'h7400;
		RAM[51]=16'h2044;
		RAM[52]=16'h7080;
		RAM[53]=16'h3044;
		RAM[54]=16'h7002;
		RAM[55]=16'h4039;
		RAM[56]=16'h403d;
		RAM[57]=16'h2043;
		RAM[58]=16'h1045;
		RAM[59]=16'h3045;
		RAM[60]=16'h7400;
		RAM[61]=16'h2043;
		RAM[62]=16'h7040;
		RAM[63]=16'h3043;
		RAM[64]=16'h6046;
		RAM[65]=16'h4032;
		RAM[66]=16'h7001;
		RAM[67]=16'h0004;
		RAM[68]=16'h000d;
		RAM[69]=16'h0000;
		RAM[70]=16'hfff8;
		for(i=71;i<128;i=i+1)
			RAM[i]=0;
