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

!:==================== Fortran NetCDF API Main Module =========================
module ncf90api
  use netcdf
  use iso_c_binding
  implicit none
  include "ncf90api_constants.f90"   !Parameter variables
  include "ncf90api_datatypes.f90"   !Datatype structure declarations
  include "ncf90api_interfaces.f90"  !Interfaces for subroutines definitions and datatypes

  contains
  include "ncf90api_checkerror.f90"  !Error checker subroutines
  include "ncf90api_datetime.f90"    !System date-time subroutine
  include "ncf90api_griddims.f90"    !Subroutines to get the number of coordinates from NetCDF file
  include "ncf90api_readgrid.f90"    !NetCDF file reader subroutines
  include "ncf90api_writegrid.f90"   !NetCDF file writer subroutines
  include "ncf90api_fvalue.f90"      !Set FillValue and mask creator subroutines
!  include "ncf90api_zonalstats.f90"  !Zonal Statistics subroutines
  include "ncf90api_fileutils.f90"   !File Utilities
end module ncf90api
