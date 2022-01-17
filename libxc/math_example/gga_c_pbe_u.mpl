
Polarization := "unpol":
Digits := 20:             (* constants will have 20 digits *)
interface(warnlevel=0):   (* supress all warnings          *)
with(CodeGeneration):

$include <gga_c_pbe.mpl>:


dens := (r0, r1) -> r0:
zeta := (r0, r1) -> 0:
xs0  := (r0, r1, sigma0, sigma2) -> sqrt(sigma0/4)/((r0/2)^(1 + 1/DIMENSIONS)):
xs1  := (r0, r1, sigma0, sigma2) -> sqrt(sigma0/4)/((r0/2)^(1 + 1/DIMENSIONS)):
xt   := (r0, r1, sigma0, sigma1, sigma2) -> sqrt(sigma0)/r0^(1 + 1/DIMENSIONS):

dmfd10000 := (v0, v1, v2, v3, v4) ->  eval(diff(mf(v0, v1, v2, v3, v4), v0)):

dmfd01000 := (v0, v1, v2, v3, v4) ->  eval(diff(mf(v0, v1, v2, v3, v4), v1)):

dmfd00100 := (v0, v1, v2, v3, v4) ->  eval(diff(mf(v0, v1, v2, v3, v4), v2)):

dmfd00010 := (v0, v1, v2, v3, v4) ->  eval(diff(mf(v0, v1, v2, v3, v4), v3)):

dmfd00001 := (v0, v1, v2, v3, v4) ->  eval(diff(mf(v0, v1, v2, v3, v4), v4)):

dmfd20000 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd10000(v0, v1, v2, v3, v4), v0)):

dmfd11000 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd01000(v0, v1, v2, v3, v4), v0)):

dmfd02000 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd01000(v0, v1, v2, v3, v4), v1)):

dmfd10100 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00100(v0, v1, v2, v3, v4), v0)):

dmfd10010 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00010(v0, v1, v2, v3, v4), v0)):

dmfd10001 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00001(v0, v1, v2, v3, v4), v0)):

dmfd01100 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00100(v0, v1, v2, v3, v4), v1)):

dmfd01010 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00010(v0, v1, v2, v3, v4), v1)):

dmfd01001 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00001(v0, v1, v2, v3, v4), v1)):

dmfd00200 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00100(v0, v1, v2, v3, v4), v2)):

dmfd00110 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00010(v0, v1, v2, v3, v4), v2)):

dmfd00101 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00001(v0, v1, v2, v3, v4), v2)):

dmfd00020 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00010(v0, v1, v2, v3, v4), v3)):

dmfd00011 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00001(v0, v1, v2, v3, v4), v3)):

dmfd00002 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00001(v0, v1, v2, v3, v4), v4)):

dmfd30000 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd20000(v0, v1, v2, v3, v4), v0)):

dmfd21000 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd11000(v0, v1, v2, v3, v4), v0)):

dmfd12000 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd02000(v0, v1, v2, v3, v4), v0)):

dmfd03000 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd02000(v0, v1, v2, v3, v4), v1)):

dmfd20100 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd10100(v0, v1, v2, v3, v4), v0)):

dmfd20010 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd10010(v0, v1, v2, v3, v4), v0)):

dmfd20001 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd10001(v0, v1, v2, v3, v4), v0)):

dmfd11100 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd01100(v0, v1, v2, v3, v4), v0)):

dmfd11010 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd01010(v0, v1, v2, v3, v4), v0)):

dmfd11001 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd01001(v0, v1, v2, v3, v4), v0)):

dmfd02100 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd01100(v0, v1, v2, v3, v4), v1)):

dmfd02010 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd01010(v0, v1, v2, v3, v4), v1)):

dmfd02001 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd01001(v0, v1, v2, v3, v4), v1)):

dmfd10200 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00200(v0, v1, v2, v3, v4), v0)):

dmfd10110 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00110(v0, v1, v2, v3, v4), v0)):

dmfd10101 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00101(v0, v1, v2, v3, v4), v0)):

dmfd10020 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00020(v0, v1, v2, v3, v4), v0)):

dmfd10011 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00011(v0, v1, v2, v3, v4), v0)):

dmfd10002 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00002(v0, v1, v2, v3, v4), v0)):

dmfd01200 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00200(v0, v1, v2, v3, v4), v1)):

dmfd01110 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00110(v0, v1, v2, v3, v4), v1)):

dmfd01101 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00101(v0, v1, v2, v3, v4), v1)):

dmfd01020 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00020(v0, v1, v2, v3, v4), v1)):

dmfd01011 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00011(v0, v1, v2, v3, v4), v1)):

dmfd01002 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00002(v0, v1, v2, v3, v4), v1)):

dmfd00300 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00200(v0, v1, v2, v3, v4), v2)):

dmfd00210 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00110(v0, v1, v2, v3, v4), v2)):

dmfd00201 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00101(v0, v1, v2, v3, v4), v2)):

dmfd00120 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00020(v0, v1, v2, v3, v4), v2)):

dmfd00111 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00011(v0, v1, v2, v3, v4), v2)):

dmfd00102 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00002(v0, v1, v2, v3, v4), v2)):

dmfd00030 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00020(v0, v1, v2, v3, v4), v3)):

dmfd00021 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00011(v0, v1, v2, v3, v4), v3)):

dmfd00012 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00002(v0, v1, v2, v3, v4), v3)):

dmfd00003 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00002(v0, v1, v2, v3, v4), v4)):

dmfd40000 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd30000(v0, v1, v2, v3, v4), v0)):

dmfd31000 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd21000(v0, v1, v2, v3, v4), v0)):

dmfd22000 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd12000(v0, v1, v2, v3, v4), v0)):

dmfd13000 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd03000(v0, v1, v2, v3, v4), v0)):

dmfd04000 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd03000(v0, v1, v2, v3, v4), v1)):

dmfd30100 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd20100(v0, v1, v2, v3, v4), v0)):

dmfd30010 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd20010(v0, v1, v2, v3, v4), v0)):

dmfd30001 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd20001(v0, v1, v2, v3, v4), v0)):

dmfd21100 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd11100(v0, v1, v2, v3, v4), v0)):

dmfd21010 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd11010(v0, v1, v2, v3, v4), v0)):

dmfd21001 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd11001(v0, v1, v2, v3, v4), v0)):

dmfd12100 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd02100(v0, v1, v2, v3, v4), v0)):

dmfd12010 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd02010(v0, v1, v2, v3, v4), v0)):

dmfd12001 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd02001(v0, v1, v2, v3, v4), v0)):

dmfd03100 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd02100(v0, v1, v2, v3, v4), v1)):

dmfd03010 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd02010(v0, v1, v2, v3, v4), v1)):

dmfd03001 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd02001(v0, v1, v2, v3, v4), v1)):

dmfd20200 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd10200(v0, v1, v2, v3, v4), v0)):

dmfd20110 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd10110(v0, v1, v2, v3, v4), v0)):

dmfd20101 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd10101(v0, v1, v2, v3, v4), v0)):

dmfd20020 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd10020(v0, v1, v2, v3, v4), v0)):

dmfd20011 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd10011(v0, v1, v2, v3, v4), v0)):

dmfd20002 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd10002(v0, v1, v2, v3, v4), v0)):

dmfd11200 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd01200(v0, v1, v2, v3, v4), v0)):

dmfd11110 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd01110(v0, v1, v2, v3, v4), v0)):

dmfd11101 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd01101(v0, v1, v2, v3, v4), v0)):

dmfd11020 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd01020(v0, v1, v2, v3, v4), v0)):

dmfd11011 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd01011(v0, v1, v2, v3, v4), v0)):

dmfd11002 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd01002(v0, v1, v2, v3, v4), v0)):

dmfd02200 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd01200(v0, v1, v2, v3, v4), v1)):

dmfd02110 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd01110(v0, v1, v2, v3, v4), v1)):

dmfd02101 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd01101(v0, v1, v2, v3, v4), v1)):

dmfd02020 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd01020(v0, v1, v2, v3, v4), v1)):

dmfd02011 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd01011(v0, v1, v2, v3, v4), v1)):

dmfd02002 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd01002(v0, v1, v2, v3, v4), v1)):

dmfd10300 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00300(v0, v1, v2, v3, v4), v0)):

dmfd10210 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00210(v0, v1, v2, v3, v4), v0)):

dmfd10201 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00201(v0, v1, v2, v3, v4), v0)):

dmfd10120 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00120(v0, v1, v2, v3, v4), v0)):

dmfd10111 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00111(v0, v1, v2, v3, v4), v0)):

dmfd10102 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00102(v0, v1, v2, v3, v4), v0)):

dmfd10030 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00030(v0, v1, v2, v3, v4), v0)):

dmfd10021 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00021(v0, v1, v2, v3, v4), v0)):

dmfd10012 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00012(v0, v1, v2, v3, v4), v0)):

dmfd10003 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00003(v0, v1, v2, v3, v4), v0)):

dmfd01300 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00300(v0, v1, v2, v3, v4), v1)):

dmfd01210 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00210(v0, v1, v2, v3, v4), v1)):

dmfd01201 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00201(v0, v1, v2, v3, v4), v1)):

dmfd01120 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00120(v0, v1, v2, v3, v4), v1)):

dmfd01111 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00111(v0, v1, v2, v3, v4), v1)):

dmfd01102 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00102(v0, v1, v2, v3, v4), v1)):

dmfd01030 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00030(v0, v1, v2, v3, v4), v1)):

dmfd01021 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00021(v0, v1, v2, v3, v4), v1)):

dmfd01012 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00012(v0, v1, v2, v3, v4), v1)):

dmfd01003 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00003(v0, v1, v2, v3, v4), v1)):

dmfd00400 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00300(v0, v1, v2, v3, v4), v2)):

dmfd00310 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00210(v0, v1, v2, v3, v4), v2)):

dmfd00301 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00201(v0, v1, v2, v3, v4), v2)):

dmfd00220 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00120(v0, v1, v2, v3, v4), v2)):

dmfd00211 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00111(v0, v1, v2, v3, v4), v2)):

dmfd00202 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00102(v0, v1, v2, v3, v4), v2)):

dmfd00130 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00030(v0, v1, v2, v3, v4), v2)):

dmfd00121 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00021(v0, v1, v2, v3, v4), v2)):

dmfd00112 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00012(v0, v1, v2, v3, v4), v2)):

dmfd00103 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00003(v0, v1, v2, v3, v4), v2)):

dmfd00040 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00030(v0, v1, v2, v3, v4), v3)):

dmfd00031 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00021(v0, v1, v2, v3, v4), v3)):

dmfd00022 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00012(v0, v1, v2, v3, v4), v3)):

dmfd00013 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00003(v0, v1, v2, v3, v4), v3)):

dmfd00004 := (v0, v1, v2, v3, v4) ->  eval(diff(dmfd00003(v0, v1, v2, v3, v4), v4)):




# zk is energy per unit particle
mzk  := (r0, r1, s0, s1, s2) -> \
   \
    f(r_ws(dens(r0, r1)), zeta(r0, r1), xt(r0, r1, s0, s1, s2), xs0(r0, r1, s0, s2), xs1(r0, r1, s0, s2)) \
  :

(* mf is energy per unit volume *)
mf   := (r0, r1, s0, s1, s2) -> eval(dens(r0, r1)*mzk(r0, r1, s0, s1, s2)):

$include <util.mpl>

C([zk_0_ = mzk(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), vrho_0_ = dmfd10000(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), vrho_1_ = dmfd01000(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), vsigma_0_ = dmfd00100(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), vsigma_1_ = dmfd00010(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), vsigma_2_ = dmfd00001(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v2rho2_0_ = dmfd20000(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v2rho2_1_ = dmfd11000(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v2rho2_2_ = dmfd02000(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v2rhosigma_0_ = dmfd10100(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v2rhosigma_1_ = dmfd10010(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v2rhosigma_2_ = dmfd10001(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v2rhosigma_3_ = dmfd01100(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v2rhosigma_4_ = dmfd01010(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v2rhosigma_5_ = dmfd01001(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v2sigma2_0_ = dmfd00200(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v2sigma2_1_ = dmfd00110(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v2sigma2_2_ = dmfd00101(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v2sigma2_3_ = dmfd00020(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v2sigma2_4_ = dmfd00011(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v2sigma2_5_ = dmfd00002(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v3rho3_0_ = dmfd30000(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v3rho3_1_ = dmfd21000(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v3rho3_2_ = dmfd12000(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v3rho3_3_ = dmfd03000(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v3rho2sigma_0_ = dmfd20100(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v3rho2sigma_1_ = dmfd20010(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v3rho2sigma_2_ = dmfd20001(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v3rho2sigma_3_ = dmfd11100(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v3rho2sigma_4_ = dmfd11010(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v3rho2sigma_5_ = dmfd11001(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v3rho2sigma_6_ = dmfd02100(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v3rho2sigma_7_ = dmfd02010(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v3rho2sigma_8_ = dmfd02001(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v3rhosigma2_0_ = dmfd10200(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v3rhosigma2_1_ = dmfd10110(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v3rhosigma2_2_ = dmfd10101(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v3rhosigma2_3_ = dmfd10020(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v3rhosigma2_4_ = dmfd10011(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v3rhosigma2_5_ = dmfd10002(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v3rhosigma2_6_ = dmfd01200(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v3rhosigma2_7_ = dmfd01110(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v3rhosigma2_8_ = dmfd01101(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v3rhosigma2_9_ = dmfd01020(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v3rhosigma2_10_ = dmfd01011(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v3rhosigma2_11_ = dmfd01002(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v3sigma3_0_ = dmfd00300(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v3sigma3_1_ = dmfd00210(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v3sigma3_2_ = dmfd00201(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v3sigma3_3_ = dmfd00120(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v3sigma3_4_ = dmfd00111(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v3sigma3_5_ = dmfd00102(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v3sigma3_6_ = dmfd00030(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v3sigma3_7_ = dmfd00021(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v3sigma3_8_ = dmfd00012(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v3sigma3_9_ = dmfd00003(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rho4_0_ = dmfd40000(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rho4_1_ = dmfd31000(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rho4_2_ = dmfd22000(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rho4_3_ = dmfd13000(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rho4_4_ = dmfd04000(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rho3sigma_0_ = dmfd30100(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rho3sigma_1_ = dmfd30010(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rho3sigma_2_ = dmfd30001(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rho3sigma_3_ = dmfd21100(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rho3sigma_4_ = dmfd21010(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rho3sigma_5_ = dmfd21001(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rho3sigma_6_ = dmfd12100(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rho3sigma_7_ = dmfd12010(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rho3sigma_8_ = dmfd12001(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rho3sigma_9_ = dmfd03100(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rho3sigma_10_ = dmfd03010(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rho3sigma_11_ = dmfd03001(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rho2sigma2_0_ = dmfd20200(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rho2sigma2_1_ = dmfd20110(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rho2sigma2_2_ = dmfd20101(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rho2sigma2_3_ = dmfd20020(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rho2sigma2_4_ = dmfd20011(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rho2sigma2_5_ = dmfd20002(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rho2sigma2_6_ = dmfd11200(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rho2sigma2_7_ = dmfd11110(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rho2sigma2_8_ = dmfd11101(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rho2sigma2_9_ = dmfd11020(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rho2sigma2_10_ = dmfd11011(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rho2sigma2_11_ = dmfd11002(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rho2sigma2_12_ = dmfd02200(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rho2sigma2_13_ = dmfd02110(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rho2sigma2_14_ = dmfd02101(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rho2sigma2_15_ = dmfd02020(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rho2sigma2_16_ = dmfd02011(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rho2sigma2_17_ = dmfd02002(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rhosigma3_0_ = dmfd10300(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rhosigma3_1_ = dmfd10210(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rhosigma3_2_ = dmfd10201(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rhosigma3_3_ = dmfd10120(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rhosigma3_4_ = dmfd10111(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rhosigma3_5_ = dmfd10102(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rhosigma3_6_ = dmfd10030(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rhosigma3_7_ = dmfd10021(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rhosigma3_8_ = dmfd10012(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rhosigma3_9_ = dmfd10003(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rhosigma3_10_ = dmfd01300(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rhosigma3_11_ = dmfd01210(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rhosigma3_12_ = dmfd01201(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rhosigma3_13_ = dmfd01120(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rhosigma3_14_ = dmfd01111(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rhosigma3_15_ = dmfd01102(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rhosigma3_16_ = dmfd01030(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rhosigma3_17_ = dmfd01021(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rhosigma3_18_ = dmfd01012(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4rhosigma3_19_ = dmfd01003(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4sigma4_0_ = dmfd00400(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4sigma4_1_ = dmfd00310(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4sigma4_2_ = dmfd00301(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4sigma4_3_ = dmfd00220(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4sigma4_4_ = dmfd00211(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4sigma4_5_ = dmfd00202(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4sigma4_6_ = dmfd00130(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4sigma4_7_ = dmfd00121(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4sigma4_8_ = dmfd00112(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4sigma4_9_ = dmfd00103(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4sigma4_10_ = dmfd00040(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4sigma4_11_ = dmfd00031(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4sigma4_12_ = dmfd00022(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4sigma4_13_ = dmfd00013(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_), v4sigma4_14_ = dmfd00004(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_)], optimize, deducetypes=false):

