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

!++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
!Checks if file exists and count its number of rows
!++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

program utils
  use fpl
  implicit none

  integer(kind=4) :: nrows

  write(*,*) "Count line number"
  write(*,*) "============================"

  !Checks if file exists
  if(file_exists("database/data.txt")) then
    write(*,*) "File OK!"
    open(100, file="database/data.txt", status="old")
  end if

  !Count line numbers
  nrows = numRows(100)

  write(*,*) nrows, file_exists("database/data.txt")

end program utils
