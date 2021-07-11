#include <stdio.h>
#include <stdlib.h>
#include "../include/common.h"
#include "../include/token.h"

void lexical_analysis(FILE* fp){
	static const int max_token_num = 255;
	
	TOKEN *token;
	token = (TOKEN *)malloc( sizeof(TOKEN)*max_token_num );

	int token_index = 0;
	char chr = fgetc(fp);
	while(chr != EOF) {
		putchar(chr);

		switch (chr) {
			case '+':
				break;
		}

		chr = fgetc(fp);
	}
}