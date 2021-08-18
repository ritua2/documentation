#include <stdio.h> 
#include <math.h> 
#include <stdlib.h> 

int main(int argc, char** argv) 
{ 
   int n,i; 
   sscanf(argv[1],"%d",&n); 

   printf(" The prime factors of %d are:", n); 
  
   while (n%2 == 0) 
   { 
       n = n/2; 
   } 

 for(i = 3; i <= (int)sqrt(n); i = i+2) 
   { 
                while (n%i == 0) 
                { 
                   printf("%d ", i); 
                   n = n/i; 
                } 
   } 
   if (n > 2) 
       printf ("%d", n); 
   printf("\n"); 
   return 0; 
} 
