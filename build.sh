#/bin/bash
BASENAME=mecab-ko-dic-2.1.1-20180720
FILE=$BASENAME.tar.gz

rm -rf dist $BASENAME

if [[ ! -f $FILE ]] ; then
    curl -LO https://bitbucket.org/eunjeon/mecab-ko-dic/downloads/$FILE
fi
tar -xvf $FILE

cd $BASENAME
PATH=$PATH:`pwd`/../bin ./configure
make
make install
