AC	Simulation
    *Calling the technology file
    .lib './TSMC_90nm.l' TT
    * OpAMP Net list
    M1		B		VIN-		A	HI		pch		W=3.47u	L=0.1u	M=1
    M2		C		VIN+		A	HI		pch		W=3.47u	L=0.1u	M=1
    M3		VOUT        	VIN-		A	HI		pch		W=3.47u	L=0.1u	M=1
    M4		D		VIN+		A	HI		pch		W=3.47u	L=0.1u	M=1
    M5		B		B		LO	LO		nch		W=0.45u	L=0.1u	M=1
    M6		C		C		LO	LO		nch		W=0.45u	L=0.1u	M=1
    M7		B		C		LO	LO		nch		W=0.41u	L=0.1u	M=1
    M8		C		B		LO	LO		nch		W=0.41u	L=0.1u	M=1
    M9		D		B		LO	LO		nch		W=2.27u	L=0.1u	M=1
    M10   	VOUT	   	C		LO	LO		nch		W=2.27u	L=0.2u	M=2
    M11	   	D	   	D		HI	HI		pch		W=5.62u	L=0.1u	M=1
    M12	   	VOUT		D		HI	HI		pch		W=5.62u	L=0.17u	M=1.7
    M13   	A		F		HI	HI		pch		W=0.26u	L=0.13u	M=69
    M14	   	F		F		HI	HI		pch		W=0.26u	L=0.13u	M=1
    Ib		F		0	dc=2.5u
    VDD		HI		0	dc=1
    VSS		LO		0	dc=0
    C_L		VOUT		LO	1p
    ***************************************************************************

** AC simulation


vshort    VIN-      VOUT   dc=0
vpulse1   VIN+      0      pulse(0   .25   0   0.01n  0.01n   6n    10n)

.option accurate=1
.tran 0.002n 50n    
.probe
.end