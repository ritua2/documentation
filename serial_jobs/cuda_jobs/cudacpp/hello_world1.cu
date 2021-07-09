#include <iostream>
#include <cuda.h>
#include <stdlib.h>
#include <unistd.h>
using namespace std;

int main(){

 int count, err;
 cudaGetDeviceCount(&count);
 cout<<"device count = "<<count<<"\n";
 if(err = cudaSetDevice(count-1)){
    cout<<"cudaSetDevice error, "<<err<<"\n";
 }
 return 0;
}

