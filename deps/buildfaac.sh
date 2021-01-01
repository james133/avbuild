cur_dir=$(cd "$(dirname "$0")"; pwd)
parent_dir=$(dirname $(pwd))

tar zxvf faac-1.29.9.2.tar.gz
cd faac-1.29.9.2
./configure --prefix=${parent_dir}/release  --enable-static --disable-shared
make && make install