#include <stdio.h>/* for printf */
#include <gmp.h>

int main(int argc, char *argv[])
{
  mpz_t a, b;                 /* working numbers */
  mpz_init_set_str (a, "100", 10);/* Assume decimal integers */
  mpz_init_set_str (b, "50", 10);/* Assume decimal integers */
  mpz_add (a, a, b);/* a=a+b */

  printf("%s + %s => %s\n", "100", "50", mpz_get_str (NULL, 10, a));
  return 0;
}
