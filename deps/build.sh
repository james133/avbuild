cur_dir=$(cd "$(dirname "$0")"; pwd)
parent_dir=$(dirname $(pwd))

./buildfaac.sh
./buildfaad2.sh 
sudo ./buildfdk-aac.sh 
./buildlame.sh
#./buildmp4v2.sh 
sudo ./buildx264.sh 
