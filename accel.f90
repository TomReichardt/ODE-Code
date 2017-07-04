module accel
 implicit none

 contains

 subroutine get_accel(pos,acc)
    real, dimension(2), intent(in) :: pos
    real, dimension(2), intent(out) :: acc
    real :: r

    r = sqrt(pos(1)**2 + pos(2)**2)

    !acc(1) = -pos(1) / (r**3)
    !acc(2) = -pos(2) / (r**3)
    acc = -pos/(r**3)
  end subroutine get_accel
end module accel
