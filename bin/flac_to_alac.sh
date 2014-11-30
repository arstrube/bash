#!/bin/bash
#: Title       : flac_to_alac.sh
#: Date        : 2014-11-29
#: Author      : "Arnd R. Strube" <arstrube@gmx.de>
#: Version     : 1.0
#: Description : Convert all FLAC encoded audio files to Apple Lossless
#:             : recursively
#: Options     : None

## convert flac to apple lossless
convert_to_alac() {
  for dir in ${*}; do
    echo   DIRECTORY IS: $dir;
  done;
}

convert_to_alac *

# for dir in ${$1}; do
#     pushd $dir
#     for file in $(ls *.flac); do
#         echo     ffmpeg -i "$file" -c:a alac `basename $file .flac`.m4a; #! or -codec:a / -acodec.
#     done;
#     popd;
# done;
#
