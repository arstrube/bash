#!/bin/bash
#: Title       : flac_to_alac.sh
#: Date        : 2014-11-29
#: Author      : "Arnd R. Strube" <arstrube@gmx.de>
#: Version     : 1.0
#: Description : Convert all FLAC encoded audio files to Apple Lossless
#:             : recursively, starting at current directory.
#: Options     : None

## convert flac to apple lossless
convert_file_to_alac() {
  echo ffmpeg -i \""$1"\" -c:a alac \"`basename "$1" .flac`.m4a\" \&\& rm -f \""$1"\" #! or -codec:a / -acodec.
}

convert_directory_to_alac() {
  for item in *; do
    if [ -d "$item" ]; then
      pushd "$item" >/dev/null; 
      convert_directory_to_alac; 
      popd >/dev/null;
    else
      case "$item" in *.flac) convert_file_to_alac "$item"; esac  
    fi;
  done;
}

convert_directory_to_alac
