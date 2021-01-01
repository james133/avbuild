cur_dir=$(cd "$(dirname "$0")"; pwd)
parent_dir=$(dirname $(pwd))

./buildfaac.sh
./buildfaad2.sh 
./buildfdk-aac.sh 
./buildlame.sh
#./buildmp4v2.sh 
./buildx264.sh 
