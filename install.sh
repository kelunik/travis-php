set -e

VERSION=(`phpenv version`)

if [ ${VERSION[0]} != "7.0.0" ]
then
	echo "aboring installation... not running with 7.0.0"
	exit 0
fi

wget http://php.kelunik.com/$1.tar.xz -q -O release.tar.xz
echo "download successful"

tar -xJf release.tar.xz
echo "unpacking successful"

rm release.tar.xz
echo "deleted archive"

mkdir -p $HOME/.phpenv/versions
rm -rf $HOME/.phpenv/versions/$1
mv $1 $HOME/.phpenv/versions/$1
echo "installed version to phpenv directory"

phpenv global $1
