readgrid2d (2-dimensional Dataset)
``````````````````````````````````
.. highlight:: fortran
   :linenothreshold: 2

readgrid2d _ ``[vdt]`` _ll ``[cdt]`` subroutine is used to read and alloc a 2-dimensional NetCDF dataset into a datatype structure. 
Combinations can be made for the statements of this subroutine by replacing ``[vdt]`` 
by one of the data types defined in the **FPL** library (``[byte, short, int, float, double]``) 
and ``[cdt]`` by a defined suffix for the data type of the coordinates ``f`` for float and ``d`` for double.

readgrid2d _ ``[vdt]`` _ll ``[cdt]`` (ifile, idata)
---------------------------------------------------

:Type naming:
 :``[vdt]``: variable datatype `[byte, short, int, float or double]`
 :``[cdt]``: coordinates datatype(float ``f``, double ``d``).
:Subroutine Parameters:
 :``ifile``: file path `[character]` 
 :``idata``: 2d dataset structure. See :ref:`structurefields`. 
:Local parameters: 
 :``ncid``: map ID `[integer]`
 :``varid``: variable ID `[integer]`
 :``i``: auxiliary variable `[integer]`
:Return:
 :``idata``: map structure with readed fields. See :ref:`structurefields`.
 :``longitudes``: array of longitudes `[float or double]`
 :``latitudes``: array of latitudes `[float or double]`

**Example:**

Read a 2-dimensional NetCDF dataset with variable declared as integer and coordinates declared as double (readgrid2d _ ``int`` _ll ``d``).

::

  subroutine readgrid2d_int_lld(ifile, idata)
    character(*), intent(in) :: ifile
    type(nc2d_int_lld) :: idata
  
    integer(kind=intgr) :: ncid, varid, i
  
    call griddims(ifile, idata)
  
    allocate(idata%longitudes(idata%nlons))
    allocate(idata%latitudes(idata%nlats))
  
    allocate(idata%ncdata(idata%dimsize(idata%dims(1)), idata%dimsize(idata%dims(2))))
    
    !Open NetCDF
    call check(nf90_open(ifile, nf90_nowrite, ncid))
  
    do i = 1, idata%ndims
      if(idata%dimname(i).eq."longitude".or.idata%dimname(i).eq."lon")then
        call check(nf90_get_var(ncid, idata%varids(i), idata%longitudes))
        idata%lonunits = idata%dimunits(i)
      end if
  
      if(idata%dimname(i).eq."latitude".or.idata%dimname(i).eq."lat") then
        call check(nf90_get_var(ncid, idata%varids(i), idata%latitudes))
        idata%latunits = idata%dimunits(i)
      end if
    end do
   
    !Get Variable name
    call check(nf90_inq_varid(ncid, idata%varname, varid), idata%varname, ifile)
    call check(nf90_get_var(ncid, varid, idata%ncdata), idata%vartype,"INT", ifile)
  
    call check(nf90_close(ncid))
  end subroutine readgrid2d_int_lld 

