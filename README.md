# libeio mirror scripts

To create your own mirror you need crap cvs tool. Scripts were tested on Ubuntu 18.04 LTS.

## libev raw mirror

1. clone and build https://github.com/rcls/crap
2. edit `mirror_cvs.sh`, change variable `REPO_GIT` to your own.
3. run `mirror_cvs.sh` (`crap-clone` built from `crap` repo is expected to be in PATH variable)
4. result should correspond to https://github.com/mksdev/libeio