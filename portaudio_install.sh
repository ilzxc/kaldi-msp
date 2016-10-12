#!/bin/bash

if [ ! -e /usr/local/include/portaudio.h ]; then 
  echo "------------------------------------------------"
  echo "Installing portaudio"
  echo "------------------------------------------------"
  git clone https://git.assembla.com/portaudio.git portaudio
  cd portaudio
  ./configure
  make
  sudo make install
  cd ..
fi

echo "------------------------------------------------"
echo "DONE!"
echo "------------------------------------------------"
