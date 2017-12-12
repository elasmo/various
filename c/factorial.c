#include<stdio.h>
 
unsigned long factorial(int);
 
int main()
{
  int n;
  long f;
 
  printf("Enter an integer to find factorial\n");
  scanf("%d", &n); 
 
  if (n < 0)
    printf("Negative integers are not allowed.\n");
  else
    printf("%d = %ld\n", n, factorial(n));
 
  return 0;
}
 
unsigned long factorial(int n)
{
  if (n == 0)
    return 1;
  else
    return(n * factorial(n-1));
}
