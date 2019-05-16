# blender-cuda

A docker image with blender using CUDA. 

By using this image, you agree to the License Agreements of the [base image nvidia/cuda](https://hub.docker.com/r/nvidia/cuda). 

## Building the Image

```bash
$ docker build -t phaus/blender-cuda .
…
Successfully built 5e93208c51c9
Successfully tagged phaus/blender-cuda:latest
```

## Running the Container

```bash
$ docker run --runtime=nvidia \
    -v $pwd/out:/out \
    -v $pwd/in:/in \
    phaus/blender-cuda:latest --render-anim --frame-start 1 --frame-end 140
```

Where `--render-anim --frame-start 1 --frame-end 140` are optional parameters.
