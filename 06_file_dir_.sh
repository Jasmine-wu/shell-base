#!/bin/bash
# 检查某个文件是否存在
if [ -f "log/text" ]; then
  echo "file exsit"
else
  echo "file not exsit"
