cur_dir=$(cd "$(dirname "$0")"; pwd)
parent_dir=$(dirname $(pwd))

tar zxvf fdk-aac-0.1.6.tar.gz
cd fdk-aac-0.1.6
./configure --prefix=${parent_dir}/release  --enable-static --disable-shared
make && make install