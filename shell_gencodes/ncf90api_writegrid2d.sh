!:========================================================================
! This file is part of f90NetCDF API (NetCDF API for Fortran 90).

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

!:======= Write 2 dimensional NetCDF byte  =========================
subroutine writegrid2d_byte(ofile, odata)
  character(*) :: ofile
  type(nc2d_byte) :: odata
  integer(kind=intgr) :: ncid, varid, xdimid, ydimid, xvarid, yvarid
  integer(kind=intgr), dimension(2) :: dimids

    !Create Netcdf
  call check(nf90_create(ofile, nf90_clobber, ncid))

  !Define dimensions
  call check(nf90_def_dim(ncid, odata%lonname, odata%nlons, xdimid))
  call check(nf90_def_dim(ncid, odata%latname, odata%nlats, ydimid))
  dimids = (/xdimid, ydimid/)

  !Define variables
  call check(nf90_def_var(ncid, odata%lonname, nf90_double, xdimid, xvarid))
  call check(nf90_put_att(ncid, xvarid, "units", odata%lonunits))

  call check(nf90_def_var(ncid, odata%latname, nf90_double, ydimid, yvarid))
  call check(nf90_put_att(ncid, yvarid, "units", odata%latunits))

  call check(nf90_def_var(ncid, odata%varname, odata%vartype, dimids, varid))
  call check(nf90_put_att(ncid, varid, "long_name", odata%long_name))
  call check(nf90_put_att(ncid, varid, "_FillValue", odata%f_value))
  call check(nf90_put_att(ncid, varid, "units", odata%varunits))

  !Global Attributes
  call check(nf90_put_att(ncid, nf90_global, Source, Research Group on Atmosphere-Biosphere Interaction))

  call check(nf90_enddef(ncid), odata%vartype, "BYTE")
 
  !Write longitudes
  call check(nf90_put_var(ncid, xvarid, odata%longitudes))

  !Write latitudes
  call check(nf90_put_var(ncid, yvarid, odata%latitudes))

  !Write variable
  call check(nf90_put_var(ncid, varid, odata%ncdata))

  call check(nf90_close(ncid), odata%vartype, "BYTE")
end subroutine writegrid2d_byte


!:======= Write 2 dimensional NetCDF short  =========================
subroutine writegrid2d_short(ofile, odata)
  character(*) :: ofile
  type(nc2d_short) :: odata
  integer(kind=intgr) :: ncid, varid, xdimid, ydimid, xvarid, yvarid
  integer(kind=intgr), dimension(2) :: dimids

    !Create Netcdf
  call check(nf90_create(ofile, nf90_clobber, ncid))

  !Define dimensions
  call check(nf90_def_dim(ncid, odata%lonname, odata%nlons, xdimid))
  call check(nf90_def_dim(ncid, odata%latname, odata%nlats, ydimid))
  dimids = (/xdimid, ydimid/)

  !Define variables
  call check(nf90_def_var(ncid, odata%lonname, nf90_double, xdimid, xvarid))
  call check(nf90_put_att(ncid, xvarid, "units", odata%lonunits))

  call check(nf90_def_var(ncid, odata%latname, nf90_double, ydimid, yvarid))
  call check(nf90_put_att(ncid, yvarid, "units", odata%latunits))

  call check(nf90_def_var(ncid, odata%varname, odata%vartype, dimids, varid))
  call check(nf90_put_att(ncid, varid, "long_name", odata%long_name))
  call check(nf90_put_att(ncid, varid, "_FillValue", odata%f_value))
  call check(nf90_put_att(ncid, varid, "units", odata%varunits))

  !Global Attributes
  call check(nf90_put_att(ncid, nf90_global, Source, Research Group on Atmosphere-Biosphere Interaction))

  call check(nf90_enddef(ncid), odata%vartype, "SHORT")
 
  !Write longitudes
  call check(nf90_put_var(ncid, xvarid, odata%longitudes))

  !Write latitudes
  call check(nf90_put_var(ncid, yvarid, odata%latitudes))

  !Write variable
  call check(nf90_put_var(ncid, varid, odata%ncdata))

  call check(nf90_close(ncid), odata%vartype, "SHORT")
end subroutine writegrid2d_short


!:======= Write 2 dimensional NetCDF int  =========================
subroutine writegrid2d_int(ofile, odata)
  character(*) :: ofile
  type(nc2d_int) :: odata
  integer(kind=intgr) :: ncid, varid, xdimid, ydimid, xvarid, yvarid
  integer(kind=intgr), dimension(2) :: dimids

    !Create Netcdf
  call check(nf90_create(ofile, nf90_clobber, ncid))

  !Define dimensions
  call check(nf90_def_dim(ncid, odata%lonname, odata%nlons, xdimid))
  call check(nf90_def_dim(ncid, odata%latname, odata%nlats, ydimid))
  dimids = (/xdimid, ydimid/)

  !Define variables
  call check(nf90_def_var(ncid, odata%lonname, nf90_double, xdimid, xvarid))
  call check(nf90_put_att(ncid, xvarid, "units", odata%lonunits))

  call check(nf90_def_var(ncid, odata%latname, nf90_double, ydimid, yvarid))
  call check(nf90_put_att(ncid, yvarid, "units", odata%latunits))

  call check(nf90_def_var(ncid, odata%varname, odata%vartype, dimids, varid))
  call check(nf90_put_att(ncid, varid, "long_name", odata%long_name))
  call check(nf90_put_att(ncid, varid, "_FillValue", odata%f_value))
  call check(nf90_put_att(ncid, varid, "units", odata%varunits))

  !Global Attributes
  call check(nf90_put_att(ncid, nf90_global, Source, Research Group on Atmosphere-Biosphere Interaction))

  call check(nf90_enddef(ncid), odata%vartype, "INT")
 
  !Write longitudes
  call check(nf90_put_var(ncid, xvarid, odata%longitudes))

  !Write latitudes
  call check(nf90_put_var(ncid, yvarid, odata%latitudes))

  !Write variable
  call check(nf90_put_var(ncid, varid, odata%ncdata))

  call check(nf90_close(ncid), odata%vartype, "INT")
end subroutine writegrid2d_int


!:======= Write 2 dimensional NetCDF float  =========================
subroutine writegrid2d_float(ofile, odata)
  character(*) :: ofile
  type(nc2d_float) :: odata
  integer(kind=intgr) :: ncid, varid, xdimid, ydimid, xvarid, yvarid
  integer(kind=intgr), dimension(2) :: dimids

    !Create Netcdf
  call check(nf90_create(ofile, nf90_clobber, ncid))

  !Define dimensions
  call check(nf90_def_dim(ncid, odata%lonname, odata%nlons, xdimid))
  call check(nf90_def_dim(ncid, odata%latname, odata%nlats, ydimid))
  dimids = (/xdimid, ydimid/)

  !Define variables
  call check(nf90_def_var(ncid, odata%lonname, nf90_double, xdimid, xvarid))
  call check(nf90_put_att(ncid, xvarid, "units", odata%lonunits))

  call check(nf90_def_var(ncid, odata%latname, nf90_double, ydimid, yvarid))
  call check(nf90_put_att(ncid, yvarid, "units", odata%latunits))

  call check(nf90_def_var(ncid, odata%varname, odata%vartype, dimids, varid))
  call check(nf90_put_att(ncid, varid, "long_name", odata%long_name))
  call check(nf90_put_att(ncid, varid, "_FillValue", odata%f_value))
  call check(nf90_put_att(ncid, varid, "units", odata%varunits))

  !Global Attributes
  call check(nf90_put_att(ncid, nf90_global, Source, Research Group on Atmosphere-Biosphere Interaction))

  call check(nf90_enddef(ncid), odata%vartype, "FLOAT")
 
  !Write longitudes
  call check(nf90_put_var(ncid, xvarid, odata%longitudes))

  !Write latitudes
  call check(nf90_put_var(ncid, yvarid, odata%latitudes))

  !Write variable
  call check(nf90_put_var(ncid, varid, odata%ncdata))

  call check(nf90_close(ncid), odata%vartype, "FLOAT")
end subroutine writegrid2d_float


!:======= Write 2 dimensional NetCDF double  =========================
subroutine writegrid2d_double(ofile, odata)
  character(*) :: ofile
  type(nc2d_double) :: odata
  integer(kind=intgr) :: ncid, varid, xdimid, ydimid, xvarid, yvarid
  integer(kind=intgr), dimension(2) :: dimids

    !Create Netcdf
  call check(nf90_create(ofile, nf90_clobber, ncid))

  !Define dimensions
  call check(nf90_def_dim(ncid, odata%lonname, odata%nlons, xdimid))
  call check(nf90_def_dim(ncid, odata%latname, odata%nlats, ydimid))
  dimids = (/xdimid, ydimid/)

  !Define variables
  call check(nf90_def_var(ncid, odata%lonname, nf90_double, xdimid, xvarid))
  call check(nf90_put_att(ncid, xvarid, "units", odata%lonunits))

  call check(nf90_def_var(ncid, odata%latname, nf90_double, ydimid, yvarid))
  call check(nf90_put_att(ncid, yvarid, "units", odata%latunits))

  call check(nf90_def_var(ncid, odata%varname, odata%vartype, dimids, varid))
  call check(nf90_put_att(ncid, varid, "long_name", odata%long_name))
  call check(nf90_put_att(ncid, varid, "_FillValue", odata%f_value))
  call check(nf90_put_att(ncid, varid, "units", odata%varunits))

  !Global Attributes
  call check(nf90_put_att(ncid, nf90_global, Source, Research Group on Atmosphere-Biosphere Interaction))

  call check(nf90_enddef(ncid), odata%vartype, "DOUBLE")
 
  !Write longitudes
  call check(nf90_put_var(ncid, xvarid, odata%longitudes))

  !Write latitudes
  call check(nf90_put_var(ncid, yvarid, odata%latitudes))

  !Write variable
  call check(nf90_put_var(ncid, varid, odata%ncdata))

  call check(nf90_close(ncid), odata%vartype, "DOUBLE")
end subroutine writegrid2d_double