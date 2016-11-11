!:=============================================================================
! This file is part of f90NetCDF (Fortran 90 API for NetCDF).

! Copyright (C) 2015 Fernando Martins Pimenta

! f90NetCDF is free software: you can redistribute it and/or modify
! it under the terms of the GNU General Public License as published by
! the Free Software Foundation, either version 3 of the License, or
! (at your option) any later version.

! f90NetCDF is distributed in the hope that it will be useful,
! but WITHOUT ANY WARRANTY; without even the implied warranty of
! MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
! GNU General Public License for more details.

! You should have received a copy of the GNU General Public License
! along with f90NetCDF.  If not, see <http://www.gnu.org/licenses/>.

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

!NetCDF <var byte> (lon <float>, lat <float>)
subroutine griddims2d_byte_llf(ifile, idata)
  type (nc2d_byte_llf) :: idata
  integer(kind=intgr) :: ncid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_byte

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims2d_byte_llf

!NetCDF <var short> (lon <float>, lat <float>)
subroutine griddims2d_short_llf(ifile, idata)
  type (nc2d_short_llf) :: idata
  integer(kind=intgr) :: ncid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_short

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims2d_short_llf

!NetCDF <var int> (lon <float>, lat <float>)
subroutine griddims2d_int_llf(ifile, idata)
  type (nc2d_int_llf) :: idata
  integer(kind=intgr) :: ncid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_int

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims2d_int_llf

!NetCDF <var float> (lon <float>, lat <float>)
subroutine griddims2d_float_llf(ifile, idata)
  type (nc2d_float_llf) :: idata
  integer(kind=intgr) :: ncid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_float

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims2d_float_llf

!NetCDF <var double> (lon <float>, lat <float>)
subroutine griddims2d_double_llf(ifile, idata)
  type (nc2d_double_llf) :: idata
  integer(kind=intgr) :: ncid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_double

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims2d_double_llf

!NetCDF <var byte> (lon <double>, lat <double>)
subroutine griddims2d_byte_lld(ifile, idata)
  type (nc2d_byte_lld) :: idata
  integer(kind=intgr) :: ncid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_byte

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims2d_byte_lld

!NetCDF <var short> (lon <double>, lat <double>)
subroutine griddims2d_short_lld(ifile, idata)
  type (nc2d_short_lld) :: idata
  integer(kind=intgr) :: ncid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_short

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims2d_short_lld

!NetCDF <var int> (lon <double>, lat <double>)
subroutine griddims2d_int_lld(ifile, idata)
  type (nc2d_int_lld) :: idata
  integer(kind=intgr) :: ncid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_int

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims2d_int_lld

!NetCDF <var float> (lon <double>, lat <double>)
subroutine griddims2d_float_lld(ifile, idata)
  type (nc2d_float_lld) :: idata
  integer(kind=intgr) :: ncid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_float

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims2d_float_lld

!NetCDF <var double> (lon <double>, lat <double>)
subroutine griddims2d_double_lld(ifile, idata)
  type (nc2d_double_lld) :: idata
  integer(kind=intgr) :: ncid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_double

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims2d_double_lld

!NetCDF <var byte> (lon <float>, lat <float>, time <int>)
subroutine griddims3d_byte_llf_ti(ifile, idata)
  type (nc3d_byte_llf_ti) :: idata 
  integer(kind=intgr) :: ncid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_byte

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims3d_byte_llf_ti

!NetCDF <var short> (lon <float>, lat <float>, time <int>)
subroutine griddims3d_short_llf_ti(ifile, idata)
  type (nc3d_short_llf_ti) :: idata 
  integer(kind=intgr) :: ncid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_short

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims3d_short_llf_ti

!NetCDF <var int> (lon <float>, lat <float>, time <int>)
subroutine griddims3d_int_llf_ti(ifile, idata)
  type (nc3d_int_llf_ti) :: idata 
  integer(kind=intgr) :: ncid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_int

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims3d_int_llf_ti

!NetCDF <var float> (lon <float>, lat <float>, time <int>)
subroutine griddims3d_float_llf_ti(ifile, idata)
  type (nc3d_float_llf_ti) :: idata 
  integer(kind=intgr) :: ncid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_float

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims3d_float_llf_ti

!NetCDF <var double> (lon <float>, lat <float>, time <int>)
subroutine griddims3d_double_llf_ti(ifile, idata)
  type (nc3d_double_llf_ti) :: idata 
  integer(kind=intgr) :: ncid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_double

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims3d_double_llf_ti

!NetCDF <var byte> (lon <double>, lat <double>, time <int>)
subroutine griddims3d_byte_lld_ti(ifile, idata)
  type (nc3d_byte_lld_ti) :: idata 
  integer(kind=intgr) :: ncid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_byte

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims3d_byte_lld_ti

!NetCDF <var short> (lon <double>, lat <double>, time <int>)
subroutine griddims3d_short_lld_ti(ifile, idata)
  type (nc3d_short_lld_ti) :: idata 
  integer(kind=intgr) :: ncid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_short

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims3d_short_lld_ti

!NetCDF <var int> (lon <double>, lat <double>, time <int>)
subroutine griddims3d_int_lld_ti(ifile, idata)
  type (nc3d_int_lld_ti) :: idata 
  integer(kind=intgr) :: ncid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_int

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims3d_int_lld_ti

!NetCDF <var float> (lon <double>, lat <double>, time <int>)
subroutine griddims3d_float_lld_ti(ifile, idata)
  type (nc3d_float_lld_ti) :: idata 
  integer(kind=intgr) :: ncid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_float

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims3d_float_lld_ti

!NetCDF <var double> (lon <double>, lat <double>, time <int>)
subroutine griddims3d_double_lld_ti(ifile, idata)
  type (nc3d_double_lld_ti) :: idata 
  integer(kind=intgr) :: ncid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_double

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims3d_double_lld_ti

!NetCDF <var byte> (lon <float>, lat <float>, time <float>)
subroutine griddims3d_byte_llf_tf(ifile, idata)
  type (nc3d_byte_llf_tf) :: idata 
  integer(kind=intgr) :: ncid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_byte

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims3d_byte_llf_tf

!NetCDF <var short> (lon <float>, lat <float>, time <float>)
subroutine griddims3d_short_llf_tf(ifile, idata)
  type (nc3d_short_llf_tf) :: idata 
  integer(kind=intgr) :: ncid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_short

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims3d_short_llf_tf

!NetCDF <var int> (lon <float>, lat <float>, time <float>)
subroutine griddims3d_int_llf_tf(ifile, idata)
  type (nc3d_int_llf_tf) :: idata 
  integer(kind=intgr) :: ncid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_int

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims3d_int_llf_tf

!NetCDF <var float> (lon <float>, lat <float>, time <float>)
subroutine griddims3d_float_llf_tf(ifile, idata)
  type (nc3d_float_llf_tf) :: idata 
  integer(kind=intgr) :: ncid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_float

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims3d_float_llf_tf

!NetCDF <var double> (lon <float>, lat <float>, time <float>)
subroutine griddims3d_double_llf_tf(ifile, idata)
  type (nc3d_double_llf_tf) :: idata 
  integer(kind=intgr) :: ncid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_double

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims3d_double_llf_tf

!NetCDF <var byte> (lon <double>, lat <double>, time <float>)
subroutine griddims3d_byte_lld_tf(ifile, idata)
  type (nc3d_byte_lld_tf) :: idata 
  integer(kind=intgr) :: ncid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_byte

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims3d_byte_lld_tf

!NetCDF <var short> (lon <double>, lat <double>, time <float>)
subroutine griddims3d_short_lld_tf(ifile, idata)
  type (nc3d_short_lld_tf) :: idata 
  integer(kind=intgr) :: ncid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_short

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims3d_short_lld_tf

!NetCDF <var int> (lon <double>, lat <double>, time <float>)
subroutine griddims3d_int_lld_tf(ifile, idata)
  type (nc3d_int_lld_tf) :: idata 
  integer(kind=intgr) :: ncid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_int

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims3d_int_lld_tf

!NetCDF <var float> (lon <double>, lat <double>, time <float>)
subroutine griddims3d_float_lld_tf(ifile, idata)
  type (nc3d_float_lld_tf) :: idata 
  integer(kind=intgr) :: ncid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_float

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims3d_float_lld_tf

!NetCDF <var double> (lon <double>, lat <double>, time <float>)
subroutine griddims3d_double_lld_tf(ifile, idata)
  type (nc3d_double_lld_tf) :: idata 
  integer(kind=intgr) :: ncid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_double

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims3d_double_lld_tf

!NetCDF <var byte> (lon <float>, lat <float>, time <double>)
subroutine griddims3d_byte_llf_td(ifile, idata)
  type (nc3d_byte_llf_td) :: idata 
  integer(kind=intgr) :: ncid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_byte

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims3d_byte_llf_td

!NetCDF <var short> (lon <float>, lat <float>, time <double>)
subroutine griddims3d_short_llf_td(ifile, idata)
  type (nc3d_short_llf_td) :: idata 
  integer(kind=intgr) :: ncid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_short

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims3d_short_llf_td

!NetCDF <var int> (lon <float>, lat <float>, time <double>)
subroutine griddims3d_int_llf_td(ifile, idata)
  type (nc3d_int_llf_td) :: idata 
  integer(kind=intgr) :: ncid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_int

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims3d_int_llf_td

!NetCDF <var float> (lon <float>, lat <float>, time <double>)
subroutine griddims3d_float_llf_td(ifile, idata)
  type (nc3d_float_llf_td) :: idata 
  integer(kind=intgr) :: ncid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_float

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims3d_float_llf_td

!NetCDF <var double> (lon <float>, lat <float>, time <double>)
subroutine griddims3d_double_llf_td(ifile, idata)
  type (nc3d_double_llf_td) :: idata 
  integer(kind=intgr) :: ncid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_double

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims3d_double_llf_td

!NetCDF <var byte> (lon <double>, lat <double>, time <double>)
subroutine griddims3d_byte_lld_td(ifile, idata)
  type (nc3d_byte_lld_td) :: idata 
  integer(kind=intgr) :: ncid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_byte

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims3d_byte_lld_td

!NetCDF <var short> (lon <double>, lat <double>, time <double>)
subroutine griddims3d_short_lld_td(ifile, idata)
  type (nc3d_short_lld_td) :: idata 
  integer(kind=intgr) :: ncid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_short

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims3d_short_lld_td

!NetCDF <var int> (lon <double>, lat <double>, time <double>)
subroutine griddims3d_int_lld_td(ifile, idata)
  type (nc3d_int_lld_td) :: idata 
  integer(kind=intgr) :: ncid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_int

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims3d_int_lld_td

!NetCDF <var float> (lon <double>, lat <double>, time <double>)
subroutine griddims3d_float_lld_td(ifile, idata)
  type (nc3d_float_lld_td) :: idata 
  integer(kind=intgr) :: ncid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_float

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims3d_float_lld_td

!NetCDF <var double> (lon <double>, lat <double>, time <double>)
subroutine griddims3d_double_lld_td(ifile, idata)
  type (nc3d_double_lld_td) :: idata 
  integer(kind=intgr) :: ncid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_double

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims3d_double_lld_td

!NetCDF <var byte> (lon <float>, lat <float>, time <int>, level <int>)
subroutine griddims4d_byte_llf_ti_li(ifile, idata)
  type (nc4d_byte_llf_ti_li) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_byte

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_byte_llf_ti_li

!NetCDF <var short> (lon <float>, lat <float>, time <int>, level <int>)
subroutine griddims4d_short_llf_ti_li(ifile, idata)
  type (nc4d_short_llf_ti_li) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_short

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_short_llf_ti_li

!NetCDF <var int> (lon <float>, lat <float>, time <int>, level <int>)
subroutine griddims4d_int_llf_ti_li(ifile, idata)
  type (nc4d_int_llf_ti_li) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_int

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_int_llf_ti_li

!NetCDF <var float> (lon <float>, lat <float>, time <int>, level <int>)
subroutine griddims4d_float_llf_ti_li(ifile, idata)
  type (nc4d_float_llf_ti_li) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_float

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_float_llf_ti_li

!NetCDF <var double> (lon <float>, lat <float>, time <int>, level <int>)
subroutine griddims4d_double_llf_ti_li(ifile, idata)
  type (nc4d_double_llf_ti_li) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_double

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_double_llf_ti_li

!NetCDF <var byte> (lon <double>, lat <double>, time <int>, level <int>)
subroutine griddims4d_byte_lld_ti_li(ifile, idata)
  type (nc4d_byte_lld_ti_li) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_byte

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_byte_lld_ti_li

!NetCDF <var short> (lon <double>, lat <double>, time <int>, level <int>)
subroutine griddims4d_short_lld_ti_li(ifile, idata)
  type (nc4d_short_lld_ti_li) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_short

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_short_lld_ti_li

!NetCDF <var int> (lon <double>, lat <double>, time <int>, level <int>)
subroutine griddims4d_int_lld_ti_li(ifile, idata)
  type (nc4d_int_lld_ti_li) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_int

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_int_lld_ti_li

!NetCDF <var float> (lon <double>, lat <double>, time <int>, level <int>)
subroutine griddims4d_float_lld_ti_li(ifile, idata)
  type (nc4d_float_lld_ti_li) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_float

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_float_lld_ti_li

!NetCDF <var double> (lon <double>, lat <double>, time <int>, level <int>)
subroutine griddims4d_double_lld_ti_li(ifile, idata)
  type (nc4d_double_lld_ti_li) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_double

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_double_lld_ti_li

!NetCDF <var byte> (lon <float>, lat <float>, time <float>, level <int>)
subroutine griddims4d_byte_llf_tf_li(ifile, idata)
  type (nc4d_byte_llf_tf_li) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_byte

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_byte_llf_tf_li

!NetCDF <var short> (lon <float>, lat <float>, time <float>, level <int>)
subroutine griddims4d_short_llf_tf_li(ifile, idata)
  type (nc4d_short_llf_tf_li) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_short

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_short_llf_tf_li

!NetCDF <var int> (lon <float>, lat <float>, time <float>, level <int>)
subroutine griddims4d_int_llf_tf_li(ifile, idata)
  type (nc4d_int_llf_tf_li) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_int

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_int_llf_tf_li

!NetCDF <var float> (lon <float>, lat <float>, time <float>, level <int>)
subroutine griddims4d_float_llf_tf_li(ifile, idata)
  type (nc4d_float_llf_tf_li) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_float

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_float_llf_tf_li

!NetCDF <var double> (lon <float>, lat <float>, time <float>, level <int>)
subroutine griddims4d_double_llf_tf_li(ifile, idata)
  type (nc4d_double_llf_tf_li) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_double

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_double_llf_tf_li

!NetCDF <var byte> (lon <double>, lat <double>, time <float>, level <int>)
subroutine griddims4d_byte_lld_tf_li(ifile, idata)
  type (nc4d_byte_lld_tf_li) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_byte

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_byte_lld_tf_li

!NetCDF <var short> (lon <double>, lat <double>, time <float>, level <int>)
subroutine griddims4d_short_lld_tf_li(ifile, idata)
  type (nc4d_short_lld_tf_li) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_short

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_short_lld_tf_li

!NetCDF <var int> (lon <double>, lat <double>, time <float>, level <int>)
subroutine griddims4d_int_lld_tf_li(ifile, idata)
  type (nc4d_int_lld_tf_li) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_int

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_int_lld_tf_li

!NetCDF <var float> (lon <double>, lat <double>, time <float>, level <int>)
subroutine griddims4d_float_lld_tf_li(ifile, idata)
  type (nc4d_float_lld_tf_li) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_float

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_float_lld_tf_li

!NetCDF <var double> (lon <double>, lat <double>, time <float>, level <int>)
subroutine griddims4d_double_lld_tf_li(ifile, idata)
  type (nc4d_double_lld_tf_li) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_double

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_double_lld_tf_li

!NetCDF <var byte> (lon <float>, lat <float>, time <double>, level <int>)
subroutine griddims4d_byte_llf_td_li(ifile, idata)
  type (nc4d_byte_llf_td_li) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_byte

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_byte_llf_td_li

!NetCDF <var short> (lon <float>, lat <float>, time <double>, level <int>)
subroutine griddims4d_short_llf_td_li(ifile, idata)
  type (nc4d_short_llf_td_li) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_short

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_short_llf_td_li

!NetCDF <var int> (lon <float>, lat <float>, time <double>, level <int>)
subroutine griddims4d_int_llf_td_li(ifile, idata)
  type (nc4d_int_llf_td_li) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_int

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_int_llf_td_li

!NetCDF <var float> (lon <float>, lat <float>, time <double>, level <int>)
subroutine griddims4d_float_llf_td_li(ifile, idata)
  type (nc4d_float_llf_td_li) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_float

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_float_llf_td_li

!NetCDF <var double> (lon <float>, lat <float>, time <double>, level <int>)
subroutine griddims4d_double_llf_td_li(ifile, idata)
  type (nc4d_double_llf_td_li) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_double

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_double_llf_td_li

!NetCDF <var byte> (lon <double>, lat <double>, time <double>, level <int>)
subroutine griddims4d_byte_lld_td_li(ifile, idata)
  type (nc4d_byte_lld_td_li) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_byte

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_byte_lld_td_li

!NetCDF <var short> (lon <double>, lat <double>, time <double>, level <int>)
subroutine griddims4d_short_lld_td_li(ifile, idata)
  type (nc4d_short_lld_td_li) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_short

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_short_lld_td_li

!NetCDF <var int> (lon <double>, lat <double>, time <double>, level <int>)
subroutine griddims4d_int_lld_td_li(ifile, idata)
  type (nc4d_int_lld_td_li) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_int

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_int_lld_td_li

!NetCDF <var float> (lon <double>, lat <double>, time <double>, level <int>)
subroutine griddims4d_float_lld_td_li(ifile, idata)
  type (nc4d_float_lld_td_li) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_float

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_float_lld_td_li

!NetCDF <var double> (lon <double>, lat <double>, time <double>, level <int>)
subroutine griddims4d_double_lld_td_li(ifile, idata)
  type (nc4d_double_lld_td_li) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_double

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_double_lld_td_li

!NetCDF <var byte> (lon <float>, lat <float>, time <int>, level <float>)
subroutine griddims4d_byte_llf_ti_lf(ifile, idata)
  type (nc4d_byte_llf_ti_lf) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_byte

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_byte_llf_ti_lf

!NetCDF <var short> (lon <float>, lat <float>, time <int>, level <float>)
subroutine griddims4d_short_llf_ti_lf(ifile, idata)
  type (nc4d_short_llf_ti_lf) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_short

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_short_llf_ti_lf

!NetCDF <var int> (lon <float>, lat <float>, time <int>, level <float>)
subroutine griddims4d_int_llf_ti_lf(ifile, idata)
  type (nc4d_int_llf_ti_lf) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_int

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_int_llf_ti_lf

!NetCDF <var float> (lon <float>, lat <float>, time <int>, level <float>)
subroutine griddims4d_float_llf_ti_lf(ifile, idata)
  type (nc4d_float_llf_ti_lf) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_float

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_float_llf_ti_lf

!NetCDF <var double> (lon <float>, lat <float>, time <int>, level <float>)
subroutine griddims4d_double_llf_ti_lf(ifile, idata)
  type (nc4d_double_llf_ti_lf) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_double

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_double_llf_ti_lf

!NetCDF <var byte> (lon <double>, lat <double>, time <int>, level <float>)
subroutine griddims4d_byte_lld_ti_lf(ifile, idata)
  type (nc4d_byte_lld_ti_lf) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_byte

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_byte_lld_ti_lf

!NetCDF <var short> (lon <double>, lat <double>, time <int>, level <float>)
subroutine griddims4d_short_lld_ti_lf(ifile, idata)
  type (nc4d_short_lld_ti_lf) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_short

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_short_lld_ti_lf

!NetCDF <var int> (lon <double>, lat <double>, time <int>, level <float>)
subroutine griddims4d_int_lld_ti_lf(ifile, idata)
  type (nc4d_int_lld_ti_lf) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_int

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_int_lld_ti_lf

!NetCDF <var float> (lon <double>, lat <double>, time <int>, level <float>)
subroutine griddims4d_float_lld_ti_lf(ifile, idata)
  type (nc4d_float_lld_ti_lf) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_float

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_float_lld_ti_lf

!NetCDF <var double> (lon <double>, lat <double>, time <int>, level <float>)
subroutine griddims4d_double_lld_ti_lf(ifile, idata)
  type (nc4d_double_lld_ti_lf) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_double

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_double_lld_ti_lf

!NetCDF <var byte> (lon <float>, lat <float>, time <float>, level <float>)
subroutine griddims4d_byte_llf_tf_lf(ifile, idata)
  type (nc4d_byte_llf_tf_lf) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_byte

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_byte_llf_tf_lf

!NetCDF <var short> (lon <float>, lat <float>, time <float>, level <float>)
subroutine griddims4d_short_llf_tf_lf(ifile, idata)
  type (nc4d_short_llf_tf_lf) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_short

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_short_llf_tf_lf

!NetCDF <var int> (lon <float>, lat <float>, time <float>, level <float>)
subroutine griddims4d_int_llf_tf_lf(ifile, idata)
  type (nc4d_int_llf_tf_lf) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_int

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_int_llf_tf_lf

!NetCDF <var float> (lon <float>, lat <float>, time <float>, level <float>)
subroutine griddims4d_float_llf_tf_lf(ifile, idata)
  type (nc4d_float_llf_tf_lf) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_float

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_float_llf_tf_lf

!NetCDF <var double> (lon <float>, lat <float>, time <float>, level <float>)
subroutine griddims4d_double_llf_tf_lf(ifile, idata)
  type (nc4d_double_llf_tf_lf) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_double

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_double_llf_tf_lf

!NetCDF <var byte> (lon <double>, lat <double>, time <float>, level <float>)
subroutine griddims4d_byte_lld_tf_lf(ifile, idata)
  type (nc4d_byte_lld_tf_lf) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_byte

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_byte_lld_tf_lf

!NetCDF <var short> (lon <double>, lat <double>, time <float>, level <float>)
subroutine griddims4d_short_lld_tf_lf(ifile, idata)
  type (nc4d_short_lld_tf_lf) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_short

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_short_lld_tf_lf

!NetCDF <var int> (lon <double>, lat <double>, time <float>, level <float>)
subroutine griddims4d_int_lld_tf_lf(ifile, idata)
  type (nc4d_int_lld_tf_lf) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_int

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_int_lld_tf_lf

!NetCDF <var float> (lon <double>, lat <double>, time <float>, level <float>)
subroutine griddims4d_float_lld_tf_lf(ifile, idata)
  type (nc4d_float_lld_tf_lf) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_float

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_float_lld_tf_lf

!NetCDF <var double> (lon <double>, lat <double>, time <float>, level <float>)
subroutine griddims4d_double_lld_tf_lf(ifile, idata)
  type (nc4d_double_lld_tf_lf) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_double

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_double_lld_tf_lf

!NetCDF <var byte> (lon <float>, lat <float>, time <double>, level <float>)
subroutine griddims4d_byte_llf_td_lf(ifile, idata)
  type (nc4d_byte_llf_td_lf) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_byte

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_byte_llf_td_lf

!NetCDF <var short> (lon <float>, lat <float>, time <double>, level <float>)
subroutine griddims4d_short_llf_td_lf(ifile, idata)
  type (nc4d_short_llf_td_lf) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_short

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_short_llf_td_lf

!NetCDF <var int> (lon <float>, lat <float>, time <double>, level <float>)
subroutine griddims4d_int_llf_td_lf(ifile, idata)
  type (nc4d_int_llf_td_lf) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_int

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_int_llf_td_lf

!NetCDF <var float> (lon <float>, lat <float>, time <double>, level <float>)
subroutine griddims4d_float_llf_td_lf(ifile, idata)
  type (nc4d_float_llf_td_lf) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_float

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_float_llf_td_lf

!NetCDF <var double> (lon <float>, lat <float>, time <double>, level <float>)
subroutine griddims4d_double_llf_td_lf(ifile, idata)
  type (nc4d_double_llf_td_lf) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_double

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_double_llf_td_lf

!NetCDF <var byte> (lon <double>, lat <double>, time <double>, level <float>)
subroutine griddims4d_byte_lld_td_lf(ifile, idata)
  type (nc4d_byte_lld_td_lf) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_byte

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_byte_lld_td_lf

!NetCDF <var short> (lon <double>, lat <double>, time <double>, level <float>)
subroutine griddims4d_short_lld_td_lf(ifile, idata)
  type (nc4d_short_lld_td_lf) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_short

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_short_lld_td_lf

!NetCDF <var int> (lon <double>, lat <double>, time <double>, level <float>)
subroutine griddims4d_int_lld_td_lf(ifile, idata)
  type (nc4d_int_lld_td_lf) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_int

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_int_lld_td_lf

!NetCDF <var float> (lon <double>, lat <double>, time <double>, level <float>)
subroutine griddims4d_float_lld_td_lf(ifile, idata)
  type (nc4d_float_lld_td_lf) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_float

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_float_lld_td_lf

!NetCDF <var double> (lon <double>, lat <double>, time <double>, level <float>)
subroutine griddims4d_double_lld_td_lf(ifile, idata)
  type (nc4d_double_lld_td_lf) :: idata 
  integer(kind=intgr) :: ncid, ldimid, tdimid, xdimid, ydimid, varid
  character(*), intent(in) :: ifile

  !Open NetCDF File
  call check(nf90_open(ifile, nf90_nowrite, ncid))

  !Get level Number
  call checkdimid(nf90_inq_dimid(ncid, idata%levelname, ldimid), idata%levelname)
  call check(nf90_inquire_dimension(ncid, ldimid, idata%levelname, idata%nlevels))

  !Get Time Number
  call checkdimid(nf90_inq_dimid(ncid, idata%timename, tdimid), idata%timename)
  call check(nf90_inquire_dimension(ncid, tdimid, idata%timename, idata%ntimes))

  !Get Coordinate values and put them in nx, ny
  call checkdimid(nf90_inq_dimid(ncid, idata%lonname, xdimid), idata%lonname)
  call check(nf90_inquire_dimension(ncid, xdimid, idata%lonname, idata%nlons))

  call checkdimid(nf90_inq_dimid(ncid, idata%latname, ydimid), idata%latname)
  call check(nf90_inquire_dimension(ncid, ydimid, idata%latname, idata%nlats))

  !Inquire variable type
  call checkvarid(nf90_inq_varid(ncid, idata%varname, varid), idata%varname)
  call check(nf90_inquire_variable(ncid,varid,idata%varname, idata%vartype))

  idata%FillValue = nf90_fill_double

  !Close NetCDF
  call check(nf90_close(ncid))
end subroutine griddims4d_double_lld_td_lf
