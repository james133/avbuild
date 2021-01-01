cur_dir=$(cd "$(dirname "$0")"; pwd)
parent_dir=$(dirname $(pwd))

tar jxvf x264-master.tar.bz2
cd x264-master
./configure --prefix=${parent_dir}/release --enable-static --enable-pic
make && make install

./configure --prefix=/usr --enable-static --enable-pic
make && make install
