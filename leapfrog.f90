module leapfrog

 implicit none

 contains

 subroutine step_leapfrog(pos,vel,acc,step)
    use accel, only:get_accel

    real, dimension(2), intent(inout)::pos,vel,acc
    real, dimension(2) :: step_vel, step_acc
    real, intent(in) :: step

    pos = pos + step * vel + 0.5 * step**2 * acc

    step_vel = vel + step * acc
 
    call get_accel(pos,step_acc)

    vel = step_vel + 0.5 * step * (step_acc - acc)
    acc = step_acc

 end subroutine step_leapfrog

end module leapfrog
