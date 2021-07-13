program hello
include 'mpif.h'
call MPI_INIT (ierr)
print *, "Hello world"
call MPI_FINALIZE (ierr)
end program hello
