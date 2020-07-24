# deepstream

This project contains scripts to run NVIDIA Deepstream on a local Ubuntu machine. There are a few prerequisites needed to run the sample codes. Assuming that Ubuntu is used, the scripts will install these requirements:
- CUDA 10.0
- TensorRT 5.0
- Other prerequisites

The scripts are divided so that the they can be edited accordingly in case of any errors encountered.
1.  Install CUDA 10.0: Run `bash cuda.sh` to install CUDA10.0 for Ubuntu 18.04. If the Ubuntu machine is of a different version, a different file can be downloaded [here](https://developer.nvidia.com/cuda-10.0-download-archive?target_os=Linux&target_arch=x86_64&target_distro=Ubuntu). It is suggested to select the deb(network) as it is more stable. If the cuda.sh script is not used, run 
`export PATH=/usr/local/cuda-10.0/bin:$PATH` and 
`export LD_LIBRARY_PATH=/usr/local/cuda-10.0/lib64:$LD_LIBRARY_PATH`
2. Install TensorRT 5.0: Run `bash tensorrt.sh` Other versions of TensorRT can be downloaded [here](https://developer.nvidia.com/nvidia-tensorrt-5x-download). The tensorrt.sh script is based on the installation guide found [here](https://docs.nvidia.com/deeplearning/sdk/tensorrt-install-guide/index.html).
3. Install other prerequisistes: Run `bash prereq.sh`. This script will install the prerequisites needed, and also will untar the binaries.tbz2 file at the same time. Take note to make sure the binaries.tbz2 file is in the same directory as well. 

Docker
Run `bash docker.sh` to install NVIDIA Docker's container and run DeepStream container.
