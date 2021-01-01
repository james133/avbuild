cur_dir=$(cd "$(dirname "$0")"; pwd)
parent_dir=$(dirname $(pwd))

tar zxvf faad2-2.8.8.tar.gz
cd faad2-2.8.8
./configure --prefix=${parent_dir}/release  --enable-static --disable-shared
make && make install