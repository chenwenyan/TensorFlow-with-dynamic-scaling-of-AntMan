# Introduction
This repository contains a re-implementation of Alibaba Group's paper "AntMan: Dynamic Scaling on GPU Clusters for Deep Learning" ([OSDI'20](https://www.usenix.org/conference/osdi20/presentation/xiao)).
Although there is the [open source code](https://github.com/alibaba/GPU-scheduler-for-deep-learning/), I encountered some errors when compiling it. So I download tensorflow v1.15.5 and then replace some files which alibaba has modified. And then it works! Therefore I create a new repository to record this.

# How to compile it?
You can refer to the tensorflow [website](https://www.tensorflow.org/guide/profiler#trace_viewer) to compile it. 
This is my steps.
```linux
# uninstall your tensorflow
$ pip3 uninstall -y tensorflow  
# use bazel to compile
$ cd tensorflow 
$ bazel build --local_ram_resources=64000 --local_cpu_resources=32 //tensorflow/tools/pip_package:build_pip_package  
$ ./bazel-bin/tensorflow/tools/pip_package/build_pip_package /tmp/tensorflow_pkg
# install tensorflow with whl
$ cd /tmp/tensorflow_pkg
$ pip3 install tensorflow-1.15.5-cp35-cp35m-linux_x86_64.whl
```

# How to use it?
Then you can use **import tensorflow** in .py file to run ML workloads.
