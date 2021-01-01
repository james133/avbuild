cur_dir=$(cd "$(dirname "$0")"; pwd)
parent_dir=$(dirname $(pwd))

tar jxvf x264-master.tar.bz2
cd x264-master
./configure --prefix=${parent_dir}/release --enable-static
make && make install
