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
!File Manipulation subroutines ===========================================

!:=== Checks if the file exists.
subroutine file_exists(ifile)
  logical :: fexist
  character(*) :: ifile

  inquire(file=ifile, exist=fexist)
  
  if(.not.fexist)then
    write(*,*)"Header file don't exist"
    stop
  end if
  !if(fexist)write(*,*) ifile, " EXIST!"
end subroutine file_exists

!:=== This subroutine count existing keys within a file.
subroutine countkeys(ifile, nkeys)
  character(*) :: ifile
  character(100) :: inline
  integer :: stats, nkeys

  open(100, file=ifile, status="old", action="read", position="rewind")

  loop: do
    read(100, '(a)', iostat=stats) inline

    if(stats < 0)then
      exit loop
    end if

    if(inline(1:1).eq.'[')then
      nkeys = nkeys + 1
    end if

  end do loop
  close(100)
end subroutine countkeys

!:=== Allocate attributs and contents into arrays.
subroutine readheader(hfile, attribute, content)
  character(len=*) :: hfile
  character(len=200) :: inline
  character(len=*), dimension(:), allocatable :: attribute, content
  integer :: stats, n

  open(100, file=hfile, status="old", action="read", position="rewind")

  !:==== Read number of attribute keylines and the content of all keylines
  n = 0
  keys: do
    read(100, '(a)', iostat=stats) inline

    if(stats < 0)then
      exit keys
    end if
    !:==== Remove '[' and ']'
    if(inline(1:1).eq.'[')then
      n = n + 1
      attribute(n) = trim(adjustl(inline(2:len_trim(inline)-1)))
    end if
    if(inline(1:1).ne.'['.and.len_trim(inline).ne.0)then
        content(n) = trim(adjustl(inline))
    end if
  end do keys
end subroutine readheader

