cur_dir=$(cd "$(dirname "$0")"; pwd)
parent_dir=$(dirname $(pwd))

unzip mp4v2-master.zip
cd mp4v2-master
./configure --prefix=${parent_dir}/release  --enable-static --disable-shared
make && make install
