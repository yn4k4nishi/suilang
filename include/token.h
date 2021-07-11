#define TOKEN_STRING_MAX_LENGTH 255

typedef enum {
    TERM_OPERATOR,   // + -
    FACTOR_OPERATOR, // * / %
    EQUAL,           // =
    SEMICOLON,       // ;
    LSQUARE_BRACKET, // [
    RSQUARE_BRACKET, // ]
    SHIFT            // >>
} TOKEN_KIND;

typedef struct {
	int kind;
	char str[TOKEN_STRING_MAX_LENGTH];
} TOKEN;
