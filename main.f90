program main
 use setup, only: do_setup
 use accel, only: get_accel
 use leapfrog, only: step_leapfrog
 use energy, only: compute_energy
 use angular_momentum, only: compute_ang_mom
 use test_suite, only: print_particle_properties
 implicit none

 real, dimension(2) :: pos
 real, dimension(2) :: vel
 real, dimension(2) :: acc
 real               :: tot_energy, ang_mom, init_energy, init_ang_mom
 integer :: i
 character(len=20) :: filename

 call do_setup(pos,vel,0.7)
 call get_accel(pos,acc)
 call compute_energy(pos,vel,init_energy)
 call compute_ang_mom(pos,vel,init_ang_mom)

 filename = 'output.dat'
 open(unit=1,file=filename,status='replace')

 do i=1,5000
    print*, 'Step number is ', i
    call step_leapfrog(pos,vel,acc,.1)
    call compute_energy(pos,vel,tot_energy)
    call compute_ang_mom(pos,vel,ang_mom)
    !call print_particle_properties(pos,vel,acc)
    write(1,*) pos,vel,acc,1-tot_energy/init_energy,1-ang_mom/init_ang_mom
 enddo
end program main
