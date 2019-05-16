#!/bin/bash

# it's super important to give the script AFTER the Blender file so that the scene can be set to GPU.

cd /in && blender -noaudio --background file.blend \
  --python gpurender.py \
  --render-output /out/ --render-anim --frame-start 1 --frame-end 140 \
  --engine CYCLES