#include <stdio.h>
#include <cuda.h>
#include <stdlib.h>
#include <unistd.h>

int main(){

 int count, err;
 cudaGetDeviceCount(&count);
 printf("device count = %d\n", count); 
 if(err = cudaSetDevice(count-1)){
    printf("cudaSetDevice error, %d\n", err);
 }
 return 0;
}

