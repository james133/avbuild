cur_dir=$(cd "$(dirname "$0")"; pwd)
parent_dir=$(dirname $(pwd))

tar zxvf fdk-aac-0.1.6.tar.gz
cd fdk-aac-0.1.6
CXXFLAGS="-fPIC" ./configure --prefix=${parent_dir}/release  --enable-static --disable-shared 
make && make install

CXXFLAGS="-fPIC" ./configure  --prefix=/usr --enable-static --disable-shared
make && make install