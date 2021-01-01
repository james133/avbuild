cur_dir=$(cd "$(dirname "$0")"; pwd)
parent_dir=$(dirname $(pwd))

if [ -e ./mp4v2-master ]; then
  /bin/rm -rf mp4v2-master
 
else
   echo "mp4v2-master"
fi
unzip mp4v2-master.zip
cd mp4v2-master
./configure --prefix=${parent_dir}/release  --enable-static --disable-shared
make && make install
