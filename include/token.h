
typedef enum {
    TERM_OPERATOR,   // + -
    FACTOR_OPERATOR, // * / %
    EQUAL,           // =
    SEMICOLON,       // ;
    LSQUARE_BRACKET, // [
    RSQUARE_BRACKET, // ]
    SHIFT            // >>
} TOKEN_KIND;
