# 字句解析

```bash
$ flex sample.l
$ gcc -o sample lex.yy.c
$ echo "abc 123\n 1. 3.2\n def" | ./sample
Executing lexical analyzer.
ID: abc
Integer: 123 is parsed as 123
\ID: n
Float: 1. is parsed as 1.000000
Float: 3.2 is parsed as 3.200000
\ID: n
ID: def
Reached the end-of-file (1 lines).
```