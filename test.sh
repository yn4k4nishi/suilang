#! /bin/bash

make

echo "================================"
./sui-compiler.o example/main.sui
echo "================================"