#include <omp.h>
#include <iostream>
#include <stdlib.h>
using namespace std;
int main(int argc, char* argv[])

{
    // Beginning of parallel region

    #pragma omp parallel

    {



        cout<<"Hello World... from thread ="<< omp_get_thread_num();
        cout<<"\n";

    }

    // Ending of parallel region
        return 0;
}
