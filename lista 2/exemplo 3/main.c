#include <stdio.h>
#include <math.h>

extern double meuSeno (double angulo);

int main (void)
{
	double ang = 1;
	printf ("Seno pela biblioteca-padrao: %f\n", sin (ang));
	printf ("Seno pela meuSeno: %f\n", meuSeno (ang));

	return 0;
}

