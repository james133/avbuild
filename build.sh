cur_dir=$(cd "$(dirname "$0")"; pwd)
parent_dir=$(dirname $(pwd))

if [ -e ./ffmpeg-4.3.1.tar.bz2 ]; then
  /bin/rm -rf ffmpeg-4.3.1
  /bin/rm -rf *sdk-*
  /bin/rm -rf build_sdk-*
  tar jxvf ffmpeg-4.3.1.tar.bz2
else
   echo "please downlaod ffmpeg-4.3.1.tar.bz2 http://www.ffmpeg.org/download.html"
   exit
fi
export PKG_CONFIG_PATH=${cur_dir}/lib/pkgconfig
export FFSRC=${cur_dir}/ffmpeg-4.3.1
./avbuild.sh
