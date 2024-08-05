/* token.h */

typedef enum {
        ID = 256,
        NUM, 
        //KEY 
        ARRAY, // 258
        BOOLEAN, // 259
        CHART,
        ELSE,
        FALSE,
        FOR,
        FUNCTION,
        IF,
        INTEGER,
        PRINT,
        RETURN,
        STRING,
        TRUE,
        VOID,
        WHILE,  
        //SYMC
        LTE, // <= 273
        GTE, // >=
        EQU, // ==
        NEQ, // !=
        AND, // &&
        OR, // ||
        //SYM,  
        CHAR,
        STR,
        ERROR
} token_t; 





