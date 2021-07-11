#include "../include/common.h"
#include <stdio.h>

int main(int argc, char *argv[]){
	if(argc < 2){
		printf("\x1b[31mERROR: Missing command line argument.\n");
		return 0;
	}

	lexical_analysis();

	return 0;
}