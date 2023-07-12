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
M_1    J1	       B      0       0      nmos    L='1.0*Lmin'    W='1.0*Wmin'
M_2    J2	       A      0       0      nmos    L='1.0*Lmin'    W='1.0*Wmin'
M_3    J1	       A      J2      0      nmos    L='1.0*Lmin'    W='1.0*Wmin'
M_4    CoutBar     Cin    J1      0      nmos    L='1.0*Lmin'    W='1.0*Wmin'
M_5    CoutBar     B      J2      0      nmos    L='1.0*Lmin'    W='1.0*Wmin'

****layer1
**pullup
M_6    CoutBar   Cin    J3      Vdd    pmos    L='1.0*Lmin'    W='1.0*Wmin'
M_7    CoutBar   B      J4      Vdd    pmos    L='1.0*Lmin'    W='1.0*Wmin'
M_8    J3        A      J4      Vdd    pmos    L='1.0*Lmin'    W='1.0*Wmin'
M_9    J3        B      Vdd     Vdd    pmos    L='1.0*Lmin'    W='1.0*Wmin'
M_10   J4        A      Vdd     Vdd    pmos    L='1.0*Lmin'    W='1.0*Wmin'

****layer2
**pulldowon
M_11    J5	        Cin                0       0      nmos    L='1.0*Lmin'    W='1.0*Wmin'
M_12    J6	        CoutBar            0       0      nmos    L='1.0*Lmin'    W='1.0*Wmin'
M_13    J5	        A                  J6      0      nmos    L='1.0*Lmin'    W='1.0*Wmin'
M_14    SumBar      CoutBar            J5      0      nmos    L='1.0*Lmin'    W='1.0*Wmin'
M_15    SumBar      B                  J6      0      nmos    L='1.0*Lmin'    W='1.0*Wmin'

****layer2
**pullup
M_16    SumBar   CoutBar      J7      Vdd    pmos    L='1.0*Lmin'    W='1.0*Wmin'
M_17    SumBar   B            J8      Vdd    pmos    L='1.0*Lmin'    W='1.0*Wmin'
M_18    J7       A            J8      Vdd    pmos    L='1.0*Lmin'    W='1.0*Wmin'
M_19    J7       Cin          Vdd     Vdd    pmos    L='1.0*Lmin'    W='1.0*Wmin'
M_20    J8       CoutBar      Vdd     Vdd    pmos    L='1.0*Lmin'    W='1.0*Wmin'

**** Sum
M_21    Sum         SumBar   0       0      nmos    L='1.0*Lmin'    W='1.0*Wmin'
M_22    Sum         SumBar   Vdd     Vdd    pmos    L='1.0*Lmin'    W='1.0*Wmin'

**** Cout
M_23    Cout      CoutBar      0       0      nmos    L='1.0*Lmin'    W='1.0*Wmin'
M_24    Cout      CoutBar      Vdd     Vdd    pmos    L='1.0*Lmin'    W='1.0*Wmin'


***** Analysis ******
.OPTION	post=2 nomod

 Va A 0 0
 Vb B 0 0
 Vc C 0 0

* Va A 0 0
* Vb B 0 0
* Vc C 0 vdd

* Va A 0 0
* Vb B 0 vdd
* Vc C 0 0

* Va A 0 0
* Vb B 0 vdd
* Vc C 0 vdd

* Va A 0 vdd
* Vb B 0 0
* Vc C 0 0

* Va A 0 vdd
* Vb B 0 0
* Vc C 0 vdd

* Va A 0 vdd
* Vb B 0 vdd
* Vc C 0 0

* Va A 0 vdd
* Vb B 0 vdd
* Vc C 0 vdd

**** active power
.measure tran pow AVG power from=1ns to=170ns

.TRAN 10p 200n
.op
.end



