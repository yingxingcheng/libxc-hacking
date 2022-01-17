#!/bin/bash

echo "PBE_X_Unpolarized:"
maple -I../maple/gga_exc -I../maple/ -q -u gga_x_pbe_u.mpl > gga_x_pbe_u.out
echo "PBE_X_Polarized:"
maple -I../maple/gga_exc -I../maple/ -q -u gga_x_pbe_p.mpl > gga_x_pbe_p.out

echo "PBE_C_Unpolarized:"
maple -I../maple/ -I../maple/gga_exc -I../maple/lda_exc -q -u gga_c_pbe_u.mpl > gga_c_pbe_u.out
echo "PBE_C_Polarized:"
maple -I../maple/ -I../maple/gga_exc -I../maple/lda_exc -q -u gga_c_pbe_p.mpl > gga_c_pbe_p.out
