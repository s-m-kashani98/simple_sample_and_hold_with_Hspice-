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
    **AC
    VINac	VIN+	K		ac=1
    VINdc1	K	LO		dc=.3
    VINac2	VIN-	J		ac = 1
    VINdc2	J	LO		dc=.3
    .ac		dec		500		10		50g
    .option  acout=0
    .probe   vdb(VOUT, LO)
    .probe   vp(VOUT, LO)	
    .measure   ac  gain           find  vdb(VOUT, LO) at=15
    .measure   ac  unity_gain     when  vdb(VOUT, LO)=0
    .measure   ac  phase_margin   find  vp(LO, VOUT) when vdb(VOUT, LO)=0
    .probe
    .end