#!/bin/bash

# it's super important to give the script AFTER the Blender file so that the scene can be set to GPU.

blender -noaudio --background /in/*.blend \
  --python gpurender.py \
  --render-output /out/ --engine CYCLES $1