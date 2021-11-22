#include <stdio.h>
#include <signal.h>
#include <unistd.h>
#include <sys/wait.h>

void sHandler(int sig_num){
	printf("\nDetencion no pemitida\n");
}

int main(){
	signal(SIGINT, sHandler);
	signal(SIGTSTP, sHandler);
	signal(SIGQUIT, sHandler);
	signal(SIGTERM, sHandler);
	
	pid_t fork1 = fork();
	int i=1, z;
	long long int t1 = 0, t2 = 1, t3 = 1;
	
	for(z = 0; z < 50; z++){
		if(fork1 == 0){
			printf("Valor Impar: %d - PID = %d\n", i, getpid());
			i = i + 2;
			sleep(1);
			if(< == 49){
				wait(NULL)
			}
		}
		else if(fork1 > 0){
			printf("Valor Fibonacci: %lld - PPIDE = %d\n", t3, getpid());
			t1 = t2;
			t2 = t3;
			t3 = t1 + t2;
			sleep(1);
			if(z == 49){
				wait(NULL);
			}
		}
	}
}
