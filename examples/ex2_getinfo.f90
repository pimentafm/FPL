!:=============================================================================
! This file is part of FPL (Fortran Processing Library).

! Copyright (C) 2015 Fernando Martins Pimenta

! FPL is free software: you can redistribute it and/or modify
! it under the terms of the GNU General Public License as published by
! the Free Software Foundation, either version 3 of the License, or
! (at your option) any later version.

! FPL is distributed in the hope that it will be useful,
! but WITHOUT ANY WARRANTY; without even the implied warranty of
! MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
! GNU General Public License for more details.

! You should have received a copy of the GNU General Public License
! along with FPL.  If not, see <http://www.gnu.org/licenses/>.

!:=============================================================================
! About Author:
! Fernando Martins Pimenta
!  Student of Surveying and Cartographic Engineering
!  Federal University of Viçosa - Brazil

!  Bachelor of Biosystems Engineer
!  Federal University of São João del-Rei - Brazil

!  Research Group on Atmosphere-Biosphere Interaction
!  Federal University of Viçosa
!  Data: August 09, 2015

!Contacts: fernando.m.pimenta@gmail.com, fernando.m.pimenta@ufv.br
!:=============================================================================

!:====================== Get metadata from file ===============================
program main
  use fpl
  implicit none

  !Database download from UNIDATA:
  !                               file: test_echam_spectral.nc
  !                               http://www.unidata.ucar.edu/software/netcdf/examples/files.html                  

  !Set float datatype 3d dataset with, longitude and latitude and time in double datatype  
  type(nc3d_float_lld_td) :: spectral

  !Input and Output declarations
  character(100) :: inputpath, outputpath

  integer(kind=4) :: i

  inputpath = "database/test_echam_spectral.nc"
  
  outputpath = "database/spectral.nc"

  !Set necessary parameters for read the data
  spectral%varname = "albedo_nir"
  spectral%timename = "time"
  spectral%lonname = "lon"
  spectral%latname = "lat"

  !Call function to read the data (readgrid(input_data_path, defined_data_structure))
  call readgrid(inputpath, spectral)
  
  write(*,*) "====== Dataset Information ======="
  write(*,*) "=================================="
  
  !Get data information using pointer to structures
  write(*,100) "  varname: ", spectral%varname  
  write(*,100) " varunits: ", spectral%varunits
  write(*,100) "long_name: ", spectral%long_name
  
  write(*,100) "  lonname: ", spectral%lonname 
  write(*,101) "    nlons: ", spectral%nlons
  write(*,100) " lonunits: ", spectral%lonunits

  write(*,100) "  latname: ", spectral%latname
  write(*,101) "    nlats: ", spectral%nlats
  write(*,100) " latunits: ", spectral%latunits

  write(*,100) " timename: ", spectral%timename  
  write(*,101) "   ntimes: ", spectral%ntimes
  write(*,100) "timeunits: ", spectral%timeunits

  write(*,*) "ndims: ", spectral%ndims
  write(*,*) "vartype: ", spectral%vartype

  write(*,*) "Dimensions"
  write(*,*) "ndims: ", spectral%ndims

  do i = 1, spectral%ndims
   write(*,*) spectral%dimname(i), spectral%dimunits(i), &
              spectral%dimsize(i), spectral%dimid(i), &
              spectral%varids(i)
  end do

  write(*,*) "FILLVALUE: ", spectral%FillValue
   
100 format(2a12)
101 format(a12,i3)
 
  call writegrid(outputpath, spectral) 
    
end program main
