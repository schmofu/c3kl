#!/bin/sh

BASEPATH=`dirname $0`/..
SETEC=`dirname $0`/../setec-astronomy
MNTPATH=$BASEPATH/mnt
TRUECRYPT=`which truecrypt`

if [ ! -x $TRUECRYPT ]; then
  echo "Du brauchst truecrypt."
  exit;
fi

echo "Mounte Memberdatenbank in $MNTPATH"
$TRUECRYPT --mount $SETEC $MNTPATH
