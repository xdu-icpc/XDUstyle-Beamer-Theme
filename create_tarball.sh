TAG=$(git describe --tags)
VERSION=$(echo $TAG | sed 's@^v@@')
DIR=xdu-icpc-beamer-theme-$VERSION

git clean -f
make thememanual

rm -rf $DIR
mkdir -pv $DIR/XDUtheme
cp -av XDUtheme/*.pdf $DIR/XDUtheme
cp -av *.sty XDUstyle.pdf Demo.tex $DIR
tar -cf $DIR.tar $DIR
xz $DIR.tar
