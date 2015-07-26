set -e

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
