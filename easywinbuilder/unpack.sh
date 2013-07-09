set -o errexit

# echo Unpacking source...
# tar xvfz source.tar.gz
# echo

cd ..
cd libs

echo Unpacking dependencies...
tar xvfz $OPENSSL.tar.gz
tar xvfz $BERKELEYDB.tar.gz
tar xvfz $BOOST.tar.gz
tar xvfz $MINIUPNPC.tar.gz

echo

cd ..