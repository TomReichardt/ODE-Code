module energy

 implicit none

 contains

 real function kinetic_energy(vel)
    real, dimension(2), intent(in) :: vel
    
    kinetic_energy = 0.5 * (vel(1)**2 + vel(2)**2)

 end function kinetic_energy

 real function potential_energy(pos)
    real, dimension(2), intent(in) :: pos
    real :: r
    
    r = sqrt(pos(1)**2 + pos(2)**2)    

    potential_energy = - 1/r

 end function potential_energy

 subroutine compute_energy(pos,vel,tot_energy)
    real, dimension(2), intent(in) :: pos, vel
    real, intent(out) :: tot_energy
    
    tot_energy = kinetic_energy(vel) + potential_energy(pos)

 end subroutine compute_energy

end module energy
