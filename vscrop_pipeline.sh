#!/bin/bash

PROJECT_PATH="/workspace/home/projects/VS_Seg_defaced"

RESUlTS_FOLDER_NAME="UNet2d5_Att_Hard_T2"

cd $PROJECT_PATH


python3 VS_train.py     --results_folder_name $RESUlTS_FOLDER_NAME --dataset T2   2> train_error_log.txt
python3 VS_inference.py --results_folder_name $RESUlTS_FOLDER_NAME --dataset T2   2> inference_error_log.txt