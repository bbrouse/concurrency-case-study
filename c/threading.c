#include <stdio.h>
#include <pthread.h>
#include <time.h>

void *sayHello(void *arg)
{
	//printf("Hello\n");
}

int main(void)
{
	clock_t c0, c1;
	
	c0 = clock();
	int i=0;
	for (i=0; i<10000; i++){
		pthread_t pth;
		pthread_create(&pth,NULL,sayHello,NULL); 
	}
	c1 = clock();
	
	printf ("%f\n", (float) 1000*(c1 - c0)/CLOCKS_PER_SEC);

	return 0;
}