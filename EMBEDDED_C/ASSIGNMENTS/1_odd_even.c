/*
Name : Mathesh
Date : 07.10.2023 
Description : Check if number is odd or even
Sample input : Enter the value of 'n' : -2
Sample output : -2 is negative even number
*/

#include <stdio.h>
int main()
{
    int n;
    printf("Enter the value of 'n' : "); //input
    scanf("%d", &n);
    if (n == 0) //to check neither odd nor even
    {
        printf("0 is neither odd nor even\n");
    }
    else if (n > 0) //to check positive even or odd
    {
        if (n % 2 == 0)
        {
            printf("%d is positive even number\n", n);
        }
        else
        {
            printf("%d is positive odd number\n", n);
        }
    }
    else   //to check negative even or odd
    {
        if (n % 2 == 0)
        {
            printf("%d is negative even number\n", n);
        }
        else
        {
            printf("%d is negative odd number\n", n);
        }
    }
    return 0;
}
