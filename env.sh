main_dir=$(cd $(dirname $0); pwd)
export PATH=$main_dir/bin:$PATH

export PYTHONPATH=$main_dir:$main_dir/bin:$PYTHONPATH
export PYTHONPATH=$main_dir:$main_dir/python/demos:$PYTHONPATH
export LD_LIBRARY_PATH=$main_dir/../../opencv/lib:$LD_LIBRARY_PATH
export DYLD_LIBRARY_PATH=$main_dir/../../opencv/lib:$LD_LIBRARY_PATH
export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python2.6/site-packages/:/usr/local/lib/python2.6/site-packages/opencv:$main_dir/../../opencv/interfaces/swig/python:$main_dir/../../opencv/lib
export PSMODULES=$main_dir/bin:$PSMODULES

