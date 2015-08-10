set -e

VERSION=(`phpenv version`)

if [[ ${VERSION[0]} != "7.0.0" && ${VERSION[0]} != "7.0" && ${VERSION[0]} != "7" ]]
then
	echo "aborting installation... not running with 7.0.0"
	exit 1
fi

wget http://php.kelunik.com/$1.tar.xz -q -O release.tar.xz
if [ $? -eq 0 ]; then
    echo "download successful"
else
    echo "download failed"
    exit 2
fi


tar -xJf release.tar.xz
if [ $? -eq 0 ]; then
    echo "unpacking successful"
else
    echo "unpacking failed"
    exit 3
fi

rm release.tar.xz
if [ $? -eq 0 ]; then
    echo "deleted archive"
else
    echo "deletion of archive failed"
    exit 4
fi

mkdir -p $HOME/.phpenv/versions
rm -rf $HOME/.phpenv/versions/$1
mv $1 $HOME/.phpenv/versions/$1
echo "installed version to phpenv directory"

phpenv rehash
phpenv global $1
