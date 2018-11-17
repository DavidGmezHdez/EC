// gcc -Og bomba.c -o bomba -no-pie -fno-guess-branch-probability

#include <stdio.h>	// para printf(), fgets(), scanf()
#include <stdlib.h>	// para exit()
#include <string.h>	// para strncmp()
#include <sys/time.h>	// para gettimeofday(), struct timeval

#define SIZE 100
#define TLIM 5

char password[]="abracadabra\n";	// contraseña
int  passcode  = 7777;			// pin

void boom(void){
	printf(	"\n"
		"***************\n"
		"*** BOOM!!! ***\n"
		"***************\n"
		"\n");
	exit(-1);
}

void defused(void){
	printf(	"\n"
		"·························\n"
		"··· bomba desactivada ···\n"
		"·························\n"
		"\n");
	exit(0);
}

int **patron=NULL;
int main(){
	char pw[SIZE];
	int  pc, n,x,y,c1x,c1y,c2x,c2y,c3x,c3y;
	int x1=1;
	struct timeval tv1,tv2;	// gettimeofday() secs-usecs
	gettimeofday(&tv1,NULL);

	do	printf("\nIntroduce la contraseña: ");
	while (	fgets(pw, SIZE, stdin) == NULL );
	if    (	strncmp(pw,password,sizeof(password)) )
	    boom();

	gettimeofday(&tv2,NULL);
	if    ( tv2.tv_sec - tv1.tv_sec > TLIM )
	    boom();

	do  {	printf("\nIntroduce el pin: ");
	 if ((n=scanf("%i",&pc))==0)
		scanf("%*s")    ==1;         }
	while (	n!=1 );
	if    (	pc != passcode )
	    boom();

	puts("\n");
	printf("  1 2 3\n");
	printf("1 * * *\n");
	printf("2 * * *\n");
	printf("3 * * *\n");

	printf("Introduce las coordenadas el primer elemento del patron: 0 o 1 \n");
	scanf("%d",&c1x);
	scanf("%d",&c1y);
	if(c1x!=1 || c1y!=1)
		boom();
	puts("\n");
	printf("  1 2 3\n");
	printf("1 1 * *\n");
	printf("2 * * *\n");
	printf("3 * * *\n");
	printf("Introduce las coordenadas el segundo elemento del patron:\n");
	scanf("%d",&c2x);
	scanf("%d",&c2y);
	if(c2x!=2 || c2y!=2)
		boom();

	puts("\n");
	printf("  1 2 3\n");
	printf("1 1 * *\n");
	printf("2 * 1 *\n");
	printf("3 * * *\n");
	printf("Introduce las coordenadas el segundo elemento del patron:\n");
	scanf("%d",&c3x);
	scanf("%d",&c3y);
	if(c3x!=3 || c3y!=3)
		boom();

	puts("\n");
	printf("  1 2 3\n");
	printf("1 1 * *\n");
	printf("2 * 1 *\n");
	printf("3 * * 1\n");



	defused();

}
