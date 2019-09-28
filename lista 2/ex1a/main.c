#include <stdio.h>
#include <math.h>

extern double grauToRadiano (float angulo);

int main (void)
{
	float ang = 180;
	printf ("Radiano: %f\n", grauToRadiano (ang));

	return 0;
}

