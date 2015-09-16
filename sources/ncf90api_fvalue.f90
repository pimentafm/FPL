!:========================================================================
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
!:========================================================================

subroutine fvbm2d_bb(mask, map)
  type (nc2d_byte) :: map
  type (nc2d_byte) :: mask
  integer(kind=4) :: i, j

 do i = 1, mask%nlats
   do j = 1, mask%nlons
     !write(*,*)mask%f_value
     if(mask%ncdata(i,j).eq.mask%f_value) map%ncdata(i,j) = map%f_value
   end do
 end do
end subroutine fvbm2d_bb


subroutine fvbm2d_bs(mask, map)
  type (nc2d_byte) :: map
  type (nc2d_short) :: mask
  integer(kind=4) :: i, j

 do i = 1, mask%nlats
   do j = 1, mask%nlons
     !write(*,*)mask%f_value
     if(mask%ncdata(i,j).eq.mask%f_value) map%ncdata(i,j) = map%f_value
   end do
 end do
end subroutine fvbm2d_bs


subroutine fvbm2d_bi(mask, map)
  type (nc2d_byte) :: map
  type (nc2d_int) :: mask
  integer(kind=4) :: i, j

 do i = 1, mask%nlats
   do j = 1, mask%nlons
     !write(*,*)mask%f_value
     if(mask%ncdata(i,j).eq.mask%f_value) map%ncdata(i,j) = map%f_value
   end do
 end do
end subroutine fvbm2d_bi


subroutine fvbm2d_bf(mask, map)
  type (nc2d_byte) :: map
  type (nc2d_float) :: mask
  integer(kind=4) :: i, j

 do i = 1, mask%nlats
   do j = 1, mask%nlons
     !write(*,*)mask%f_value
     if(mask%ncdata(i,j).eq.mask%f_value) map%ncdata(i,j) = map%f_value
   end do
 end do
end subroutine fvbm2d_bf


subroutine fvbm2d_bd(mask, map)
  type (nc2d_byte) :: map
  type (nc2d_double) :: mask
  integer(kind=4) :: i, j

 do i = 1, mask%nlats
   do j = 1, mask%nlons
     !write(*,*)mask%f_value
     if(mask%ncdata(i,j).eq.mask%f_value) map%ncdata(i,j) = map%f_value
   end do
 end do
end subroutine fvbm2d_bd


subroutine fvbm2d_sb(mask, map)
  type (nc2d_short) :: map
  type (nc2d_byte) :: mask
  integer(kind=4) :: i, j

 do i = 1, mask%nlats
   do j = 1, mask%nlons
     !write(*,*)mask%f_value
     if(mask%ncdata(i,j).eq.mask%f_value) map%ncdata(i,j) = map%f_value
   end do
 end do
end subroutine fvbm2d_sb


subroutine fvbm2d_ss(mask, map)
  type (nc2d_short) :: map
  type (nc2d_short) :: mask
  integer(kind=4) :: i, j

 do i = 1, mask%nlats
   do j = 1, mask%nlons
     !write(*,*)mask%f_value
     if(mask%ncdata(i,j).eq.mask%f_value) map%ncdata(i,j) = map%f_value
   end do
 end do
end subroutine fvbm2d_ss


subroutine fvbm2d_si(mask, map)
  type (nc2d_short) :: map
  type (nc2d_int) :: mask
  integer(kind=4) :: i, j

 do i = 1, mask%nlats
   do j = 1, mask%nlons
     !write(*,*)mask%f_value
     if(mask%ncdata(i,j).eq.mask%f_value) map%ncdata(i,j) = map%f_value
   end do
 end do
end subroutine fvbm2d_si


subroutine fvbm2d_sf(mask, map)
  type (nc2d_short) :: map
  type (nc2d_float) :: mask
  integer(kind=4) :: i, j

 do i = 1, mask%nlats
   do j = 1, mask%nlons
     !write(*,*)mask%f_value
     if(mask%ncdata(i,j).eq.mask%f_value) map%ncdata(i,j) = map%f_value
   end do
 end do
end subroutine fvbm2d_sf


subroutine fvbm2d_sd(mask, map)
  type (nc2d_short) :: map
  type (nc2d_double) :: mask
  integer(kind=4) :: i, j

 do i = 1, mask%nlats
   do j = 1, mask%nlons
     !write(*,*)mask%f_value
     if(mask%ncdata(i,j).eq.mask%f_value) map%ncdata(i,j) = map%f_value
   end do
 end do
end subroutine fvbm2d_sd


subroutine fvbm2d_ib(mask, map)
  type (nc2d_int) :: map
  type (nc2d_byte) :: mask
  integer(kind=4) :: i, j

 do i = 1, mask%nlats
   do j = 1, mask%nlons
     !write(*,*)mask%f_value
     if(mask%ncdata(i,j).eq.mask%f_value) map%ncdata(i,j) = map%f_value
   end do
 end do
end subroutine fvbm2d_ib


subroutine fvbm2d_is(mask, map)
  type (nc2d_int) :: map
  type (nc2d_short) :: mask
  integer(kind=4) :: i, j

 do i = 1, mask%nlats
   do j = 1, mask%nlons
     !write(*,*)mask%f_value
     if(mask%ncdata(i,j).eq.mask%f_value) map%ncdata(i,j) = map%f_value
   end do
 end do
end subroutine fvbm2d_is


subroutine fvbm2d_ii(mask, map)
  type (nc2d_int) :: map
  type (nc2d_int) :: mask
  integer(kind=4) :: i, j

 do i = 1, mask%nlats
   do j = 1, mask%nlons
     !write(*,*)mask%f_value
     if(mask%ncdata(i,j).eq.mask%f_value) map%ncdata(i,j) = map%f_value
   end do
 end do
end subroutine fvbm2d_ii


subroutine fvbm2d_if(mask, map)
  type (nc2d_int) :: map
  type (nc2d_float) :: mask
  integer(kind=4) :: i, j

 do i = 1, mask%nlats
   do j = 1, mask%nlons
     !write(*,*)mask%f_value
     if(mask%ncdata(i,j).eq.mask%f_value) map%ncdata(i,j) = map%f_value
   end do
 end do
end subroutine fvbm2d_if


subroutine fvbm2d_id(mask, map)
  type (nc2d_int) :: map
  type (nc2d_double) :: mask
  integer(kind=4) :: i, j

 do i = 1, mask%nlats
   do j = 1, mask%nlons
     !write(*,*)mask%f_value
     if(mask%ncdata(i,j).eq.mask%f_value) map%ncdata(i,j) = map%f_value
   end do
 end do
end subroutine fvbm2d_id


subroutine fvbm2d_fb(mask, map)
  type (nc2d_float) :: map
  type (nc2d_byte) :: mask
  integer(kind=4) :: i, j

 do i = 1, mask%nlats
   do j = 1, mask%nlons
     !write(*,*)mask%f_value
     if(mask%ncdata(i,j).eq.mask%f_value) map%ncdata(i,j) = map%f_value
   end do
 end do
end subroutine fvbm2d_fb


subroutine fvbm2d_fs(mask, map)
  type (nc2d_float) :: map
  type (nc2d_short) :: mask
  integer(kind=4) :: i, j

 do i = 1, mask%nlats
   do j = 1, mask%nlons
     !write(*,*)mask%f_value
     if(mask%ncdata(i,j).eq.mask%f_value) map%ncdata(i,j) = map%f_value
   end do
 end do
end subroutine fvbm2d_fs


subroutine fvbm2d_fi(mask, map)
  type (nc2d_float) :: map
  type (nc2d_int) :: mask
  integer(kind=4) :: i, j

 do i = 1, mask%nlats
   do j = 1, mask%nlons
     !write(*,*)mask%f_value
     if(mask%ncdata(i,j).eq.mask%f_value) map%ncdata(i,j) = map%f_value
   end do
 end do
end subroutine fvbm2d_fi


subroutine fvbm2d_ff(mask, map)
  type (nc2d_float) :: map
  type (nc2d_float) :: mask
  integer(kind=4) :: i, j

 do i = 1, mask%nlats
   do j = 1, mask%nlons
     !write(*,*)mask%f_value
     if(mask%ncdata(i,j).eq.mask%f_value) map%ncdata(i,j) = map%f_value
   end do
 end do
end subroutine fvbm2d_ff


subroutine fvbm2d_fd(mask, map)
  type (nc2d_float) :: map
  type (nc2d_double) :: mask
  integer(kind=4) :: i, j

 do i = 1, mask%nlats
   do j = 1, mask%nlons
     !write(*,*)mask%f_value
     if(mask%ncdata(i,j).eq.mask%f_value) map%ncdata(i,j) = map%f_value
   end do
 end do
end subroutine fvbm2d_fd


subroutine fvbm2d_db(mask, map)
  type (nc2d_double) :: map
  type (nc2d_byte) :: mask
  integer(kind=4) :: i, j

 do i = 1, mask%nlats
   do j = 1, mask%nlons
     !write(*,*)mask%f_value
     if(mask%ncdata(i,j).eq.mask%f_value) map%ncdata(i,j) = map%f_value
   end do
 end do
end subroutine fvbm2d_db


subroutine fvbm2d_ds(mask, map)
  type (nc2d_double) :: map
  type (nc2d_short) :: mask
  integer(kind=4) :: i, j

 do i = 1, mask%nlats
   do j = 1, mask%nlons
     !write(*,*)mask%f_value
     if(mask%ncdata(i,j).eq.mask%f_value) map%ncdata(i,j) = map%f_value
   end do
 end do
end subroutine fvbm2d_ds


subroutine fvbm2d_di(mask, map)
  type (nc2d_double) :: map
  type (nc2d_int) :: mask
  integer(kind=4) :: i, j

 do i = 1, mask%nlats
   do j = 1, mask%nlons
     !write(*,*)mask%f_value
     if(mask%ncdata(i,j).eq.mask%f_value) map%ncdata(i,j) = map%f_value
   end do
 end do
end subroutine fvbm2d_di


subroutine fvbm2d_df(mask, map)
  type (nc2d_double) :: map
  type (nc2d_float) :: mask
  integer(kind=4) :: i, j

 do i = 1, mask%nlats
   do j = 1, mask%nlons
     !write(*,*)mask%f_value
     if(mask%ncdata(i,j).eq.mask%f_value) map%ncdata(i,j) = map%f_value
   end do
 end do
end subroutine fvbm2d_df


subroutine fvbm2d_dd(mask, map)
  type (nc2d_double) :: map
  type (nc2d_double) :: mask
  integer(kind=4) :: i, j

 do i = 1, mask%nlats
   do j = 1, mask%nlons
     !write(*,*)mask%f_value
     if(mask%ncdata(i,j).eq.mask%f_value) map%ncdata(i,j) = map%f_value
   end do
 end do
end subroutine fvbm2d_dd
