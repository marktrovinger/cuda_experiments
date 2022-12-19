#include "cuda_runtime.h"
#include "device_launch_parameters.h"

#include <stdio.h>

__global__ void hello_kernel(){
    printf("Hello World from CUDA kernel!\n");
}

int main()
{
    hello_kernel <<<1,25>>> ();
    cudaDeviceSynchronize();

    cudaDeviceReset();
    return 0;
}


