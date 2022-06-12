program hello
  use, intrinsic :: iso_c_binding
  implicit none

  integer :: a

  call sum(a)

  print *, a

contains
  ! Calculate the sum of the first n integers
  subroutine sum(n)
    use iso_c_binding
    implicit none
    integer, intent(out) :: n
    integer :: i
    n = 0
    do concurrent (i = 1:10)
      n = n + i
    end do
  end subroutine sum

end program hello
