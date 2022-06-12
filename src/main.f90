program hello
  use, intrinsic :: iso_c_binding
  implicit none

  real :: a
  real, dimension(3) :: b = [1,2,3]

  a = vector_norm(3, b)

  print *, a

contains

function vector_norm(n,vec) result(norm)
  implicit none
  integer, intent(in) :: n
  real, intent(in) :: vec(n)
  real :: norm

  norm = sqrt(sum(vec**2))
end function vector_norm

end program hello
