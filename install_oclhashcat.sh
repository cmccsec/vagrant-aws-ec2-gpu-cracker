sudo apt-get update && sudo apt-get -y upgrade
sudo apt-get install -y linux-image-extra-`uname -r`
sudo apt-get update
wget http://developer.download.nvidia.com/compute/cuda/7.5/Prod/local_installers/cuda-repo-ubuntu1404-7-5-local_7.5-18_amd64.deb -o /mnt/cuda.deb
sudo dpkg -i /mnt/cuda.deb
sudo apt-get update
sudo apt-get install -y cuda htop p7zip-full
cd ~
wget https://hashcat.net/files/cudaHashcat-2.01.7z
7za x cudaHashcat-2.01.7z
cd cudaHashcat-2.01
cd ~/cudaHashcat-2.01/
# throw down the rockyou.txt for basic bruteforcing lulz. 
wget http://downloads.skullsecurity.org/passwords/rockyou.txt.bz2
bunzip2 rockyou.txt.bz2
# echo ':$office$*2010*100000*128*16*ba32cef7705b48e08226c7115e0da7dc*f6a708c212401afd8da521b0eb205e43*53b95dd91a291b1ff3291a6db87fac0c7c7023c7630ba6233398f7eee1c5c573' > ~/cudaHashcat-2.01/hash
# ./cudaHashcat64.bin -a 3 -m 9500 -i --increment-min 5 --increment-max 8 --username --status -o lol hash ?l?l?l?l?l?l?l?l -1 ?dabcdefABCDEF
echo "?d?d?d?d
?d?d?d?d?d
?d?d?d?d?d?d
?d?d?d?d?d?d?d
?d?d?d?d?d?d?d?d
?d?d?d?d?d?d?d?d?d
?d?d?d?d?d?d?d?d?d?d
?l?l?l?l?d?d
?l?l?l?l?l?d?d
?l?l?l?l?l?l?d?d
?l?l?l?l?d?d?s
?l?l?l?l?l?d?d?s
?u?l?l?l?l
?u?l?l?l?l?l
?u?l?l?l?l?d
?u?l?l?l?l?d?d
?u?l?l?l?d?s
?u?l?l?l?l?d?s
?u?l?l?l?l?d?d?s
?u?l?l?l?l?d?d?s?s
?l?l?l?l
?l?l?l?l?l
?l?l?l?l?l?l
?l?l?l?l?l?l?l" > ~/cudaHashcat-2.01/cmc_test_maskfile.hcmask

# how to run with custom/test maskfile
# ./cudaHashcat64.bin -a 3 -m 9500 -i --increment-min 4 --increment-max 8 --username --status -o lol hash cmc_test_maskfile.hcmask -1 ?dabcdefABCDEF

# how to run with rockyou supplied maskfile 
# ./cudaHashcat64.bin -a 3 -m 9500 -i --increment-min 1 --increment-max 8 --username --status -o lol hash masks/rockyou-6-864000.hcmask
