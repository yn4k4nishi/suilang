#include <stdio.h>
#include "../include/common.h"

void lexical_analysis(FILE* fp){
	char i = fgetc(fp);
	while(i != EOF) {
		putchar(i);
		
		i = fgetc(fp);
	}
}