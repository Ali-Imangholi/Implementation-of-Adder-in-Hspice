SUM_ABCin
.lib 'mm018.l' tt

***** parameters ******
.param Lmin=180nm
.param Wmin=220nm
.param t=10p
.param vdd=1.8

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


**** active power
.measure tran pow AVG power from=1ns to=170ns

.TRAN 10p 200n
.op
.end



