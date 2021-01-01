cur_dir=$(cd "$(dirname "$0")"; pwd)
parent_dir=$(dirname $(pwd))


tar zxvf lame-3.100.tar.gz
cd lame-3.100
./configure --prefix=${parent_dir}/release  --enable-static --disable-shared
make && make install
