#!/bin/bash

echo "!:========================================================================
! This file is part of f90NetCDF API (Fortran 90 API for NetCDF).

! Copyright (C) 2015 Fernando Martins Pimenta

! f90NetCDF API is free software: you can redistribute it and/or modify
! it under the terms of the GNU General Public License as published by
! the Free Software Foundation, either version 3 of the License, or
! (at your option) any later version.

! f90NetCDF API is distributed in the hope that it will be useful,
! but WITHOUT ANY WARRANTY; without even the implied warranty of
! MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
! GNU General Public License for more details.

! You should have received a copy of the GNU General Public License
! along with f90NetCDF.  If not, see <http://www.gnu.org/licenses/>.

!:========================================================================
!About Author:
!Student of Surveying and Cartographic Engineering
! Federal University of Viçosa - Brazil

!Bachelor of Biosystems Engineer
! Federal University of São João del-Rei - Brazil

! Research Group on Atmosphere-Biosphere Interaction
! Federal University of Viçosa
! Data: August 09, 2015

!Contacts: fernando.m.pimenta@gmail.com, fernando.m.pimenta@ufv.br
!:========================================================================"

declare -a arr=("byte" "short" "int" "float" "double")
declare -a arrid=("b" "s" "i" "f" "d")
declare -a arr2=("integer(kind=byte)" "integer(kind=short)" "integer(kind=intgr)" "real(kind=float)" "real(kind=double)")

echo "!Set FillValue in map using mask FillValue - NetCDF(i,j) ==========="

for i in {0..4}; do
for j in {0..4}; do
  echo "
!NetCDF(i,j)-> ${arr[$i]}-${arr[$j]} 
subroutine fvbm2d_${arrid[$i]}${arrid[$j]}(mask, map)
  type (nc2d_${arr[$i]}) :: mask
  type (nc2d_${arr[$j]}) :: map
  integer(kind=intgr) :: i, j

  do i = 1, mask%nlats
    do j = 1, mask%nlons
      if(mask%ncdata(i,j).eq.mask%f_value) map%ncdata(i,j) = map%f_value
      if((mask%ncdata(i,j).ne.mask%f_value).and.map%ncdata(i,j).eq.map%f_value) map%ncdata(i,j) = 0
    end do
  end do
end subroutine fvbm2d_${arrid[$i]}${arrid[$j]}
"
done
done

echo "!Set FillValue in map using a number selected into maskfile ========"

for i in {0..4}; do
for j in {0..4}; do
  echo "
!NetCDF(i,j)-> ${arr[$i]}-${arr[$j]} 
subroutine fvbnm2d_${arrid[$i]}${arrid[$j]}(mask, map, num)
  type (nc2d_${arr[$i]}) :: mask
  type (nc2d_${arr[$j]}) :: map
  integer :: num
  integer(kind=intgr) :: i, j

  do i = 1, mask%nlats
    do j = 1, mask%nlons
      if(mask%ncdata(i,j).ne.num) map%ncdata(i,j) = map%f_value
      if((mask%ncdata(i,j).ne.num).and.map%ncdata(i,j).eq.map%f_value) map%ncdata(i,j) = 0
    end do
  end do
end subroutine fvbnm2d_${arrid[$i]}${arrid[$j]}
"
done
done

