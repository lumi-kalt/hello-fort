program hello
  use, intrinsic :: iso_fortran_env, only: sp=>real32, dp=>real64
  implicit none

  integer :: i
  integer, parameter :: n = 10
  real(dp) :: x
  real(dp) :: pi = 3.141592653589793_dp

  do concurrent (i = 1 : n)
      x = i
      print *, sin(x / 2. * pi)
  end do

end program hello
