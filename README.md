# blender-cuda

A docker image with blender using CUDA.

By using this image, you agree to the License Agreements of the [base image nvidia/cuda](https://hub.docker.com/r/nvidia/cuda).

Run with:  

```bash
# docker run --runtime=nvidia \
    -v $pwd/out:/out \
    -v $pwd/in:/in \
    phaus/blender-cuda:latest
```
  
Where `in/file.blend` is your blend file.