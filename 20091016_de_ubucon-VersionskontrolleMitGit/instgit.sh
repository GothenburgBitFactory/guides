#! /bin/sh

ver=$1

# Go get the packages.
curl -O http://www.kernel.org/pub/software/scm/git/git-${ver}.tar.gz
curl -O http://www.kernel.org/pub/software/scm/git/git-manpages-${ver}.tar.gz

# Install the program.
tar zxvf git-${ver}.tar.gz
cd git-${ver}
make configure
./configure --prefix=/usr/local
make
sudo make install
cd ..

# Install the man pages.
sudo tar zxv -C /usr/local/man -f git-manpages-${ver}.tar.gz

# Clean up.
rm -rf git-${ver}.tar.gz git-${ver} git-manpages-${ver}.tar.gz

# Proof.
git --version

exit 0
