#!/bin/bash

WEIGHT="pretrain/yolox_s.pth"
DATA1="../../data/coco_val2017_1"
DATA2="../../data/coco_val2017_2"
DATA3="../../data/coco_val2017_3"
DATA4="../../data/coco_val2017_4"
DATA5="../../data/coco_val2017_5"

CONF=0.25
NMS=0.45
DEVICE=$1

exec python3 tools/demo_custom.py image -n yolox_s -c $WEIGHT --path $DATA1 --conf $CONF --nms $NMS --save_result  --device $DEVICE & 
exec python3 tools/demo_custom.py image -n yolox_s -c $WEIGHT --path $DATA2 --conf $CONF --nms $NMS --save_result  --device $DEVICE & 
exec python3 tools/demo_custom.py image -n yolox_s -c $WEIGHT --path $DATA3 --conf $CONF --nms $NMS --save_result  --device $DEVICE & 
exec python3 tools/demo_custom.py image -n yolox_s -c $WEIGHT --path $DATA4 --conf $CONF --nms $NMS --save_result  --device $DEVICE & 
exec python3 tools/demo_custom.py image -n yolox_s -c $WEIGHT --path $DATA5 --conf $CONF --nms $NMS --save_result  --device $DEVICE & 

exit

