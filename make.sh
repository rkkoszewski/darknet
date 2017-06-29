#!/bin/bash
make -f Makefile clean
make -f Makefile
cp darknet darknet-cpu
make -f Makefile-gpu clean
make -f Makefile-gpu
cp darknet darknet-gpu
