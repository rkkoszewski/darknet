#!/bin/bash
./darknet-cpu stream /data/vinnie/vinnie-0.1/yolo/cfg/yolo.cfg /data/vinnie/vinnie-0.1/yolo/yolo.weights -thresh 0.15 -in images.txt -out images.result.txt
git diff images.result.txt
./darknet-gpu stream /data/vinnie/vinnie-0.1/yolo/cfg/yolo.cfg /data/vinnie/vinnie-0.1/yolo/yolo.weights -thresh 0.15 -in images.txt -out images.result.txt
git diff images.result.txt
