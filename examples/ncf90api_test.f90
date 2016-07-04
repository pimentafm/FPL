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

!:==================== A Very Simple Test Program =============================
program main
  use ncf90api
  implicit none

  !Structure declarations
  type(nc3d_double_lld_ti) :: cattle

  type(nc2d_byte_lld) :: maskara
  
  character(200) :: inputpath, outputpath, maskfile

  inputpath = "/home/fernando/Documents/WORKSPACE/dadosTestef90netcdfapi/CATTLE19902012.nc"
  maskfile = "/home/fernando/Documents/WORKSPACE/dadosTestef90netcdfapi/maskestadosBRbyte.nc"
  outputpath = "/home/fernando/Documents/WORKSPACE/dadosTestef90netcdfapi/output/cattle3.nc"
  
  cattle%varname = "Cattle"
  cattle%timename = "time"
  cattle%lonname = "lon"
  cattle%latname = "lat"
 
  maskara%varname = "Band1"
  maskara%lonname = "lon"
  maskara%latname = "lat"

  call readgrid(maskfile, maskara)
 
  call readgrid(inputpath, cattle)

  call setFillValue(maskara, cattle, 21)

  call writegrid(outputpath, cattle)

end program main