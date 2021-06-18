pip3 uninstall -y tensorflow
cd /home/tensorflow
bazel build --local_ram_resources=64000 --local_cpu_resources=32 //tensorflow/tools/pip_package:build_pip_package
./bazel-bin/tensorflow/tools/pip_package/build_pip_package /tmp/tensorflow_pkg
cd /tmp/tensorflow_pkg
pip3 install tensorflow-1.15.5-cp35-cp35m-linux_x86_64.whl
