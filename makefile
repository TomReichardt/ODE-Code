FC=gfortran
FFLAGS=-O3 -Wall -Wextra
SRC=test_suite.f90 energy.f90 angular_momentum.f90 setup.f90 accel.f90 leapfrog.f90 main.f90
OBJ=${SRC:.f90=.o}

%.o: %.f90
	$(FC) $(FFLAGS) -o $@ -c $<

main: $(OBJ)
	$(FC) $(FFLAGS) -o $@ $(OBJ)

clean:
	rm *.o *.mod main
