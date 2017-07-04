module angular_momentum

 implicit none

 contains

 subroutine compute_ang_mom(pos, vel, ang_mom)
    real, dimension(2), intent(in) :: pos, vel
    real, intent(out) :: ang_mom

    ang_mom = pos(1)*vel(2) - pos(2)*vel(1)

 end subroutine compute_ang_mom

end module angular_momentum
