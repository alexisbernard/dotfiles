#! /bin/sh

function encrypt-rsa {
  key=$1; src=$2; dst=$3
  [ "$dst" == "" ] && dst=$src.rsa
  openssl rsautl -encrypt -inkey $key -pubin -in $src -out $dst
}

function decrypt-rsa {
  key=$1: src=$2; dst=$3
  [ "$dst" == "" ] && dst=${src%.rsa}
  openssl rsautl -decrypt -inkey $key -in $src -out $dst
}

function encrypt-aes {
  src=$1; dst=$2
  [ "$dst" == "" ] && dst=$src.aes-256
  openssl enc -aes-256-cbc -salt -in $src -out $dst
}

function decrypt-aes {
  src=$1; dst=$2
  [ "$dst" == "" ] && dst=${src%.aes-256}
  openssl enc -d -aes-256-cbc -in $src -out $dst
}

