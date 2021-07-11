#include <stdio.h>
#include "../include/common.h"

int main(int argc, char *argv[]){
	if(argc < 2){
		printf("\x1b[31mERROR: Missing command line argument.\n");
		return 0;
	}

	FILE *fp;
	fp = fopen(argv[1], "r");

	if(fp == NULL){
		printf("\x1b[31mERROR: Cannot open %s.\n",argv[1]);
		return 0;
	}

	lexical_analysis(fp);


	fclose(fp);
	
	return 0;
}