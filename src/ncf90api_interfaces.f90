!:=============================================================================
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

!:=============================================================================
!About Author:
!Student of Surveying and Cartographic Engineering
! Federal University of Viçosa - Brazil

!Bachelor of Biosystems Engineer
! Federal University of São João del-Rei - Brazil

! Research Group on Atmosphere-Biosphere Interaction
! Federal University of Viçosa
! Data: August 09, 2015

!Contacts: fernando.m.pimenta@gmail.com, fernando.m.pimenta@ufv.br
!:=============================================================================

!NetCDF(lon, lat)
interface check
  module procedure checkerror, checktype, checkatt
end interface check

interface ncoords
  module procedure ncoords2d_byte, ncoords2d_short, &
                   ncoords2d_int, ncoords2d_float, &
                   ncoords2d_double, ncoords3d_double
end interface ncoords

interface readgrid
  module procedure readgrid2d_byte, readgrid2d_short, &
                   readgrid2d_int, readgrid2d_float, &
                   readgrid2d_double
end interface readgrid

interface writegrid
  module procedure writegrid2d_byte, writegrid2d_short, &
                   writegrid2d_int, writegrid2d_float, &
                   writegrid2d_double
end interface writegrid

interface setfvalue
  module procedure setfvalue2d_bb, setfvalue2d_bs, &
                   setfvalue2d_bi, setfvalue2d_bf, &
                   setfvalue2d_bd, setfvalue2d_sb, &
                   setfvalue2d_ss, setfvalue2d_si, &
                   setfvalue2d_sf, setfvalue2d_sd, &
                   setfvalue2d_ib, setfvalue2d_is, &
                   setfvalue2d_ii, setfvalue2d_if, &
                   setfvalue2d_id, setfvalue2d_fb, &
                   setfvalue2d_fs, setfvalue2d_fi, &
                   setfvalue2d_ff, setfvalue2d_fd, &
                   setfvalue2d_db, setfvalue2d_ds, &
                   setfvalue2d_di, setfvalue2d_df, &
                   setfvalue2d_dd
end interface setfvalue

interface zonalstats
  module procedure zonalstats_bb, zonalstats_bs, &
                   zonalstats_bi, zonalstats_bf, &
                   zonalstats_bd, zonalstats_sb, &
                   zonalstats_ss, zonalstats_si, &
                   zonalstats_sf, zonalstats_sd, &
                   zonalstats_ib, zonalstats_is, &
                   zonalstats_ii, zonalstats_if, &
                   zonalstats_id, zonalstats_fb, &
                   zonalstats_fs, zonalstats_fi, &
                   zonalstats_ff, zonalstats_fd, &
                   zonalstats_db, zonalstats_ds, &
                   zonalstats_di, zonalstats_df, &
                   zonalstats_dd
end interface zonalstats
