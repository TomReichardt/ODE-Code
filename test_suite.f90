module test_suite

 implicit none

 contains

 subroutine print_particle_properties(pos,vel,acc)
    real, dimension(2), intent(in) :: pos, vel, acc

    print*, 'Position of the particle: x = ', pos(1),' y = ', pos(2)
    print*, 'Velocity of the particle: x = ', vel(1),' y = ', vel(2)
    print*, 'Acceleration of the particle: x = ', acc(1),' y = ', acc(2)

 end subroutine print_particle_properties
end module test_suite
