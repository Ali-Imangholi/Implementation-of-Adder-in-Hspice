SUM_ABCin
.lib 'mm018.l' tt

***** parameters ******
.param Lmin=180nm
.param Wmin=220nm
.param t=10p
.param vdd=1.8
*.temp 0 
.temp 100
***** components ******
VDD    Vdd    0    1.8

****layer1
**pulldowon
M_1    J1	       B      0       0      nmos    L='1.0*Lmin'    W='2*Wmin'
M_2    J2	       A      0       0      nmos    L='1.0*Lmin'    W='2*Wmin'
M_3    J1	       A      J2      0      nmos    L='1.0*Lmin'    W='2*Wmin'
M_4    CoutBar     Cin    J1      0      nmos    L='1.0*Lmin'    W='2*Wmin'
M_5    CoutBar     B      J2      0      nmos    L='1.0*Lmin'    W='2*Wmin'

****layer1
**pullup
M_6    CoutBar   Cin    J3      Vdd    pmos    L='1.0*Lmin'    W='6*Wmin'
M_7    CoutBar   B      J4      Vdd    pmos    L='1.0*Lmin'    W='6*Wmin'
M_8    J3        A      J4      Vdd    pmos    L='1.0*Lmin'    W='6*Wmin'
M_9    J3        B      Vdd     Vdd    pmos    L='1.0*Lmin'    W='6*Wmin'
M_10   J4        A      Vdd     Vdd    pmos    L='1.0*Lmin'    W='6*Wmin'

****layer2
**pulldowon
M_11    J5	        Cin                0       0      nmos    L='1.0*Lmin'    W='2*Wmin'
M_12    J6	        CoutBar            0       0      nmos    L='1.0*Lmin'    W='2*Wmin'
M_13    J5	        A                  J6      0      nmos    L='1.0*Lmin'    W='2*Wmin'
M_14    SumBar      CoutBar            J5      0      nmos    L='1.0*Lmin'    W='2*Wmin'
M_15    SumBar      B                  J6      0      nmos    L='1.0*Lmin'    W='2*Wmin'

****layer2
**pullup
M_16    SumBar   CoutBar      J7      Vdd    pmos    L='1.0*Lmin'    W='6*Wmin'
M_17    SumBar   B            J8      Vdd    pmos    L='1.0*Lmin'    W='6*Wmin'
M_18    J7       A            J8      Vdd    pmos    L='1.0*Lmin'    W='6*Wmin'
M_19    J7       Cin          Vdd     Vdd    pmos    L='1.0*Lmin'    W='6*Wmin'
M_20    J8       CoutBar      Vdd     Vdd    pmos    L='1.0*Lmin'    W='6*Wmin'

**** Sum
M_21    Sum         SumBar   0       0      nmos    L='1.0*Lmin'    W='1*Wmin'
M_22    Sum         SumBar   Vdd     Vdd    pmos    L='1.0*Lmin'    W='2*Wmin'

**** Cout
M_23    Cout      CoutBar      0       0      nmos    L='1.0*Lmin'    W='1*Wmin'
M_24    Cout      CoutBar      Vdd     Vdd    pmos    L='1.0*Lmin'    W='2*Wmin'



***** Analysis ******
.OPTION	post=2 nomod

VA A 0 PWL 0n 0, '15n-t' 0, 15n vdd, '35n-t' vdd, 35n 0, '50n-t' 0, 50n vdd, '52.5n-t' vdd, 52.5n 0, '55n-t' 0, 55n vdd, 
+ '57.5n-t' vdd, 57.5n 0, '60n-t' 0, 60n vdd, '62.5n-t' vdd, 62.5n 0, '65n-t' 0, 65n vdd, '67.5n-t' vdd, 67.5n 0,  
+ '80n-t' 0, 80n vdd, '100n-t' vdd, 100n 0, '102.5n-t' 0, 102.5n vdd, '105n-t' vdd, 105n 0, '107.5n-t' 0, 107.5n vdd, 
+ '110n-t' vdd, 110n 0, '112.5n-t' 0, 112.5n vdd, '115n-t' vdd, 115n 0, '117.5n-t' 0, 117.5n vdd, '125n-t' vdd, 125n 0,
+ '127.5n-t' 0, 127.5n vdd, '130n-t' vdd, 130n 0, '132.5n-t' 0, 132.5n vdd, '135n-t' vdd, 135n 0, '137.5n-t' 0, 137.5n vdd, 
+ '140n-t' vdd, 140n 0, '142.5n-t' 0, 142.5n vdd, '145n-t' vdd, 145n 0, '147.5n-t' 0, 147.5n vdd, '150n-t' vdd, 150n 0,
+ '152.5n-t' 0, 152.5n vdd, '155n-t' vdd, 155n 0, 162.5n 0


VB B 0 PWL 0n 0, '7.5n-t' 0, 7.5n vdd, '12.5n-t' vdd, 12.5n 0, '20n-t' 0, 20n vdd, '32.5n-t' vdd, 32.5n 0, '37.5n-t' 0, 37.5n vdd, 
+ '47.5n-t' vdd, 47.5n 0, '50n-t' 0, 50n vdd, '52.5n-t' vdd, 52.5n 0, '55n-t' 0, 55n vdd, '57.5n-t' vdd, 57.5n 0, 
+ '62.5n-t' 0, 62.5n vdd, '65n-t' vdd, 65n 0, '72.5n-t' 0, 72.5n vdd, '75n-t' vdd, 75n 0, '77.5n-t' 0, 77.5n vdd, 
+ '87.5n-t' vdd, 87.5n 0, '97.5n-t' 0, 97.5n vdd, '112.5n-t' vdd, 112.5n 0, '120n-t' 0, 120n vdd, '122.5n-t' vdd, 122.5n 0, 
+ '125n-t' 0, 125n vdd, '127.5n-t' vdd, 127.5n 0, '135n-t' 0, 135n vdd, '137.5n-t' vdd, 137.5n 0, '140n-t' 0, 140n vdd, 
+ '142.5n-t' vdd, 142.5n 0, '147.5n-t' 0, 147.5n vdd, '150n-t' vdd, 150n 0, '152.5n-t' 0, 152.5n vdd, 162.5n vdd


VCin Cin 0 PWL 0n 0, '2.5n-t' 0, 2.5n vdd, '5n-t' vdd, 5n 0, '25n-t' 0, 25n vdd, '30n-t' vdd, 30n 0, '37.5n-t' 0, 37.5n vdd, 
+ '42.5n-t' vdd, 42.5n 0, '45n-t' 0, 45n vdd, '47.5n-t' vdd, 47.5n 0, '55n-t' 0, 55n vdd, '62.5n-t' vdd, 62.5n 0, 
+ '67.5n-t' 0, 67.5n vdd, '72.5n-t' vdd, 72.5n 0, '75n-t' 0, 75n vdd, '87.5n-t' vdd, 87.5n 0, '90n-t' 0, 90n vdd, 
+ '95n-t' vdd, 95n 0, '97.5n-t' 0, 97.5n vdd, '102.5n-t' vdd, 102.5n 0, '107.5n-t' 0, 107.5n vdd, '110n-t' vdd, 110n 0, 
+ '112.5n-t' 0, 112.5n vdd, '115n-t' vdd, 115n 0, '117.5n-t' 0, 117.5n vdd, '120n-t' vdd, 120n 0, '122.5n-t' 0, 122.5n vdd, 
+ '127.5n-t' vdd, 127.5n 0, '130n-t' 0, 130n vdd, '132.5n-t' vdd, 132.5n 0, '140n-t' 0, 140n vdd, '147.5n-t' vdd, 147.5n 0, 
+ '150n-t' 0, 150n vdd, '155n-t' vdd, 155n 0, 157.5n 0


********************************************************
**** Calculate the tp for input A  and output Sum   ****
********************************************************
.MEASURE TRAN A_Sum_tp_1 TRIG V(A) td=14.3ns  VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=14.3ns VAL='0.5*vdd' CROSS=1
.MEASURE TRAN A_Sum_tp_2 TRIG V(A) td=34.4ns  VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=34.4ns VAL='0.5*vdd' CROSS=1
.MEASURE TRAN A_Sum_tp_3 TRIG V(A) td=49.4ns  VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=49.4ns VAL='0.5*vdd' CROSS=1
.MEASURE TRAN A_Sum_tp_4 TRIG V(A) td=54ns    VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=54ns   VAL='0.5*vdd' CROSS=1
.MEASURE TRAN A_Sum_tp_5 TRIG V(A) td=57ns    VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=57ns   VAL='0.5*vdd' CROSS=1
.MEASURE TRAN A_Sum_tp_6 TRIG V(A) td=59.5ns  VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=59.5ns VAL='0.5*vdd' CROSS=1
.MEASURE TRAN A_Sum_tp_7 TRIG V(A) td=61.9ns  VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=61.9ns VAL='0.5*vdd' CROSS=1
.MEASURE TRAN A_Sum_tp_8 TRIG V(A) td=79.4ns  VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=79.4ns VAL='0.5*vdd' CROSS=1
.MEASURE TRAN A_Sum_tp_9 TRIG V(A) td=99.6ns  VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=99.6ns VAL='0.5*vdd' CROSS=1
.MEASURE TRAN A_Sum_tp_10 TRIG V(A) td=104ns  VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=104ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN A_Sum_tp_11 TRIG V(A) td=112ns  VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=112ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN A_Sum_tp_12 TRIG V(A) td=117ns  VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=117ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN A_Sum_tp_13 TRIG V(A) td=127ns  VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=127ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN A_Sum_tp_14 TRIG V(A) td=139ns  VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=139ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN A_Sum_tp_15 TRIG V(A) td=144ns  VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=144ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN A_Sum_tp_16 TRIG V(A) td=146ns  VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=146ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN A_Sum_tp_17 TRIG V(A) td=149ns  VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=149ns  VAL='0.5*vdd' CROSS=1

********************************************************
**** Calculate the tp for input B  and output Sum   ****
********************************************************
.MEASURE TRAN B_Sum_tp_1 TRIG V(B)  td=6.72ns  VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=6.72ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN B_Sum_tp_2 TRIG V(B)  td=11.9ns  VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=11.9ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN B_Sum_tp_3 TRIG V(B)  td=19.2ns  VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=19.2ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN B_Sum_tp_4 TRIG V(B)  td=31.8ns  VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=31.8ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN B_Sum_tp_5 TRIG V(B)  td=36.5ns  VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=36.5ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN B_Sum_tp_6 TRIG V(B)  td=49ns    VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=49ns    VAL='0.5*vdd' CROSS=1
.MEASURE TRAN B_Sum_tp_7 TRIG V(B)  td=54ns    VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=54ns    VAL='0.5*vdd' CROSS=1
.MEASURE TRAN B_Sum_tp_8 TRIG V(B)  td=56.8ns  VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=56.8ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN B_Sum_tp_9 TRIG V(B)  td=61.5ns  VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=61.5ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN B_Sum_tp_10 TRIG V(B) td=76.4ns  VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=76.4ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN B_Sum_tp_11 TRIG V(B) td=8.62ns  VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=8.62ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN B_Sum_tp_12 TRIG V(B) td=112ns   VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=112ns   VAL='0.5*vdd' CROSS=1
.MEASURE TRAN B_Sum_tp_13 TRIG V(B) td=126ns   VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=126ns   VAL='0.5*vdd' CROSS=1
.MEASURE TRAN B_Sum_tp_14 TRIG V(B) td=138ns   VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=138ns   VAL='0.5*vdd' CROSS=1
.MEASURE TRAN B_Sum_tp_15 TRIG V(B) td=146ns   VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=146ns   VAL='0.5*vdd' CROSS=1
.MEASURE TRAN B_Sum_tp_16 TRIG V(B) td=149ns   VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=149ns   VAL='0.5*vdd' CROSS=1

********************************************************
**** Calculate the tp for input Cin  and output Sum ****
********************************************************
.MEASURE TRAN Cin_Sum_tp_1 TRIG V(Cin)  td=4.03ns  VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=4.03ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN Cin_Sum_tp_2 TRIG V(Cin)  td=23.9ns  VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=23.9ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN Cin_Sum_tp_3 TRIG V(Cin)  td=28.9ns  VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=28.9ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN Cin_Sum_tp_4 TRIG V(Cin)  td=36.1ns  VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=36.1ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN Cin_Sum_tp_5 TRIG V(Cin)  td=41.5ns  VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=41.5ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN Cin_Sum_tp_6 TRIG V(Cin)  td=44.4ns  VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=44.4ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN Cin_Sum_tp_7 TRIG V(Cin)  td=53.9ns  VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=53.9ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN Cin_Sum_tp_8 TRIG V(Cin)  td=61.5ns  VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=61.5ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN Cin_Sum_tp_9 TRIG V(Cin)  td=86ns    VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=86ns    VAL='0.5*vdd' CROSS=1
.MEASURE TRAN Cin_Sum_tp_10 TRIG V(Cin) td=89.2ns  VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=89.2ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN Cin_Sum_tp_11 TRIG V(Cin) td=93.4ns  VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=93.4ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN Cin_Sum_tp_12 TRIG V(Cin) td=111ns   VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=111ns   VAL='0.5*vdd' CROSS=1
.MEASURE TRAN Cin_Sum_tp_13 TRIG V(Cin) td=117ns   VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=117ns   VAL='0.5*vdd' CROSS=1
.MEASURE TRAN Cin_Sum_tp_14 TRIG V(Cin) td=126ns   VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=126ns   VAL='0.5*vdd' CROSS=1
.MEASURE TRAN Cin_Sum_tp_15 TRIG V(Cin) td=139ns   VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=139ns   VAL='0.5*vdd' CROSS=1
.MEASURE TRAN Cin_Sum_tp_16 TRIG V(Cin) td=149ns   VAL='0.5*vdd' CROSS=1 TARG V(Sum) td=149ns   VAL='0.5*vdd' CROSS=1

********************************************************
**** Calculate the tp for input A  and output Cout  ****
********************************************************
.MEASURE TRAN A_Cout_tp_1 TRIG V(A) td=49.1ns  VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=49.1ns VAL='0.5*vdd' CROSS=1
.MEASURE TRAN A_Cout_tp_2 TRIG V(A) td=52.2ns  VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=52.2ns VAL='0.5*vdd' CROSS=1
.MEASURE TRAN A_Cout_tp_3 TRIG V(A) td=53.8ns  VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=53.8ns VAL='0.5*vdd' CROSS=1
.MEASURE TRAN A_Cout_tp_4 TRIG V(A) td=56.4ns  VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=56.4ns VAL='0.5*vdd' CROSS=1
.MEASURE TRAN A_Cout_tp_5 TRIG V(A) td=59ns    VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=59ns   VAL='0.5*vdd' CROSS=1
.MEASURE TRAN A_Cout_tp_6 TRIG V(A) td=61.5ns  VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=61.5ns VAL='0.5*vdd' CROSS=1
.MEASURE TRAN A_Cout_tp_7 TRIG V(A) td=104ns   VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=104ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN A_Cout_tp_8 TRIG V(A) td=107ns   VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=107ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN A_Cout_tp_9 TRIG V(A) td=109ns   VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=109ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN A_Cout_tp_10 TRIG V(A) td=112ns  VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=112ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN A_Cout_tp_11 TRIG V(A) td=114ns  VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=114ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN A_Cout_tp_12 TRIG V(A) td=116ns  VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=116ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN A_Cout_tp_13 TRIG V(A) td=126ns  VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=126ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN A_Cout_tp_14 TRIG V(A) td=139ns  VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=139ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN A_Cout_tp_15 TRIG V(A) td=144ns  VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=144ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN A_Cout_tp_16 TRIG V(A) td=147ns  VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=147ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN A_Cout_tp_17 TRIG V(A) td=149ns  VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=149ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN A_Cout_tp_18 TRIG V(A) td=152ns  VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=152ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN A_Cout_tp_19 TRIG V(A) td=154ns  VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=154ns  VAL='0.5*vdd' CROSS=1

********************************************************
**** Calculate the tp for input B  and output Cout  ****
********************************************************
.MEASURE TRAN B_Cout_tp_1 TRIG V(B) td=17.7ns   VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=17.7ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN B_Cout_tp_2 TRIG V(B) td=30.5ns   VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=30.5ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN B_Cout_tp_3 TRIG V(B) td=36.1ns   VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=36.1ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN B_Cout_tp_4 TRIG V(B) td=46.7ns   VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=46.7ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN B_Cout_tp_5 TRIG V(B) td=48.9ns   VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=48.9ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN B_Cout_tp_6 TRIG V(B) td=51.7ns   VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=51.7ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN B_Cout_tp_7 TRIG V(B) td=55.4ns   VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=55.4ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN B_Cout_tp_8 TRIG V(B) td=56.8ns   VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=56.8ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN B_Cout_tp_9 TRIG V(B) td=61.7ns   VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=61.7ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN B_Cout_tp_10 TRIG V(B) td=76.5ns  VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=76.5ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN B_Cout_tp_11 TRIG V(B) td=86.5ns  VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=86.5ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN B_Cout_tp_12 TRIG V(B) td=96.7ns  VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=96.7ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN B_Cout_tp_13 TRIG V(B) td=112ns   VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=112ns   VAL='0.5*vdd' CROSS=1
.MEASURE TRAN B_Cout_tp_14 TRIG V(B) td=126ns   VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=126ns   VAL='0.5*vdd' CROSS=1
.MEASURE TRAN B_Cout_tp_15 TRIG V(B) td=139ns   VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=139ns   VAL='0.5*vdd' CROSS=1
.MEASURE TRAN B_Cout_tp_16 TRIG V(B) td=147ns   VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=147ns   VAL='0.5*vdd' CROSS=1
.MEASURE TRAN B_Cout_tp_17 TRIG V(B) td=149ns   VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=149ns   VAL='0.5*vdd' CROSS=1
.MEASURE TRAN B_Cout_tp_18 TRIG V(B) td=151ns   VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=151ns   VAL='0.5*vdd' CROSS=1

*********************************************************
**** Calculate the tp for input Cin  and output Cout ****
*********************************************************
.MEASURE TRAN Cin_Cout_tp_1 TRIG V(Cin) td=36.8ns   VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=36.8ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN Cin_Cout_tp_2 TRIG V(Cin) td=41.3ns   VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=41.3ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN Cin_Cout_tp_3 TRIG V(Cin) td=44.3ns   VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=44.3ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN Cin_Cout_tp_4 TRIG V(Cin) td=46.5ns   VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=46.5ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN Cin_Cout_tp_5 TRIG V(Cin) td=54.3ns   VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=54.3ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN Cin_Cout_tp_6 TRIG V(Cin) td=61.5ns   VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=61.5ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN Cin_Cout_tp_7 TRIG V(Cin) td=86.1ns   VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=86.1ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN Cin_Cout_tp_8 TRIG V(Cin) td=89ns     VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=89ns    VAL='0.5*vdd' CROSS=1
.MEASURE TRAN Cin_Cout_tp_9 TRIG V(Cin) td=93ns    VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=93ns    VAL='0.5*vdd' CROSS=1
.MEASURE TRAN Cin_Cout_tp_10 TRIG V(Cin) td=96.7ns  VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=96.7ns  VAL='0.5*vdd' CROSS=1
.MEASURE TRAN Cin_Cout_tp_11 TRIG V(Cin) td=107ns   VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=107ns   VAL='0.5*vdd' CROSS=1
.MEASURE TRAN Cin_Cout_tp_12 TRIG V(Cin) td=109ns   VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=109ns   VAL='0.5*vdd' CROSS=1
.MEASURE TRAN Cin_Cout_tp_13 TRIG V(Cin) td=112ns   VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=112ns   VAL='0.5*vdd' CROSS=1
.MEASURE TRAN Cin_Cout_tp_14 TRIG V(Cin) td=114ns   VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=114ns   VAL='0.5*vdd' CROSS=1
.MEASURE TRAN Cin_Cout_tp_15 TRIG V(Cin) td=117ns   VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=117ns   VAL='0.5*vdd' CROSS=1
.MEASURE TRAN Cin_Cout_tp_16 TRIG V(Cin) td=126ns   VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=126ns   VAL='0.5*vdd' CROSS=1
.MEASURE TRAN Cin_Cout_tp_17 TRIG V(Cin) td=139ns   VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=139ns   VAL='0.5*vdd' CROSS=1
.MEASURE TRAN Cin_Cout_tp_18 TRIG V(Cin) td=147ns   VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=147ns   VAL='0.5*vdd' CROSS=1
.MEASURE TRAN Cin_Cout_tp_19 TRIG V(Cin) td=149ns   VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=149ns   VAL='0.5*vdd' CROSS=1
.MEASURE TRAN Cin_Cout_tp_20 TRIG V(Cin) td=154ns   VAL='0.5*vdd' CROSS=1 TARG V(Cout) td=154ns   VAL='0.5*vdd' CROSS=1


.TRAN 10p 160n
.op
.end



