module setup

 implicit none

 contains

 subroutine do_setup(pos,vel,e)
    real, dimension(2), intent(inout) :: pos,vel
    real, intent(in)                  :: e


    pos(1) = 1.-e
    pos(2) = 0.


    vel(1) = 0.
    vel(2) = sqrt((1+e)/(1-e))

 end subroutine do_setup


end module setup
