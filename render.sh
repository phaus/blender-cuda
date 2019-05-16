#!/bin/bash

# it's super important to give the script AFTER the Blender file so that the scene can be set to GPU.

nvidia-smi

blender -v

blender -noaudio --background /tmp/in/*.blend \
  --python /gpurender.py \
  --render-output /tmp/out/ \
  --engine CYCLES -f 1 \
