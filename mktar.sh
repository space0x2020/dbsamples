#!/bin/sh

TARGET=dbsamples.tar
CURDIR=dbsamples
TOPDIR=.setup
DBNAME=mydb

cd ../
tar cvf $CURDIR/$TARGET $CURDIR/setup.sh $CURDIR/$TOPDIR/${DBNAME}_*.db $CURDIR/$TOPDIR/.sqliterc
