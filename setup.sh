#!/bin/bash
#
# make sample tables
#
#rset CMD=-cmd "PRAGMA encoding = 'UTF-8'"
TOPDIR=.setup
HOMEDIR=$HOME
version='1.XX'
versiondate='2021/9/30'
versionfile=$TOPDIR/version.txt
SQLITE3=sqlite3
DBNAME=mydb
SETUPINFO=$TOPDIR/setupinfo

db_setrc=1
db_mkdb=0
db_setdb=1

if [ -f ${DBNAME}.db ]; then
    db_setdb=0
fi

while [ $# -gt 0 ]; do
    arg=$1
    case $arg in
    "--mkdb")
        db_mkdb=1
        ;;
    "--mkdb=0")
        db_mkdb=0
        ;;
    "--setrc")
        db_setrc=1
        ;;
    "--setrc=0")
        db_setrc=0
        ;;
    "--setdb")
        db_setdb=1
        ;;
    "--setdb=0")
        db_setdb=0
        ;;
    *)
        echo "Illeagel option: " $arg
        echo "Usage: [--mkdb] [--mkdb=0] [--setdb] [--setdb=0] [--setrc] [--setrc=0]"
        exit
    esac
    shift
done

#  -- setup rc --
if [ $db_setrc -eq 1 ]; then
    echo ------ setup rc ------
    sqliterc=$HOMEDIR/.sqliterc
    if [ ! -f "$sqliterc" ]; then
        echo cp $TOPDIR/.sqliterc $HOMEDIR/
        cp -a $TOPDIR/.sqliterc $HOMEDIR/
    else
        if [ ! -f "$sqliterc.bak" ]; then
          mv $sqliterc $sqliterc.bak
          echo cp .sqliterc $HOMDDIR/
          cp -a $TOPDIR/.sqliterc $HOMEDIR/
        else
          grep -q -e '-- SCSWET' $sqliterc
          rc=$?
          if [ "$rc" -ne 0 ]; then
            echo adding sqliterc
            cat $TOPDIR/.sqliterc >> $sqliterc
          fi
        fi
    fi
fi

# -- make db --
if [ $db_mkdb -eq 1 ]; then
    echo ----- makgin db ------
    if [ -f "$versionfile" ]; then
        version=`head -1 $versionfile | tr -d "\r"`
        versiondate=`tail -1 $versionfile | tr -d "\r"`
    fi

    for i in "org" "1" "2" "3"
    do
        DBFILENAME=$TOPDIR/${DBNAME}_$i.db
        if [ -f $DBFILENAME ]; then 
            echo removing  $DBFILENAME
            rm -f $DBFILENAME
        fi
        echo $SQLITE3 $CMD $DBFILENAME
        $SQLITE3 $CMD $DBFILENAME ".read $TOPDIR/datas/create_tables_s3.sql"
        $SQLITE3 $CMD $DBFILENAME ".read $TOPDIR/datas/datas_${i}_s3.sql"
        $SQLITE3 $CMD $DBFILENAME ".read $TOPDIR/datas/sql_sample_${i}_s3.sql"
        $SQLITE3 $CMD $DBFILENAME ".read $TOPDIR/datas/create_tables_hr_s3.sql"
        $SQLITE3 $CMD $DBFILENAME ".read $TOPDIR/datas/datas_hr_${i}_s3.sql"
        $SQLITE3 $CMD $DBFILENAME ".read $TOPDIR/test/fktest_s3.sql"
        $SQLITE3 $CMD $DBFILENAME ".read $TOPDIR/test/edu.sql"
        $SQLITE3 $CMD $DBFILENAME "insert into version values('$version', '$versiondate')"
    done
fi

# -- set db --
if [ $db_setdb -eq 1 ]; then
    echo ------ setup db -----
    if [ -f $SETUPINFO ]; then
        sdbname=`cat $SETUPINFO`
    else
        n=$((RANDOM%3+1))
        sdbname=$TOPDIR/${DBNAME}_${n}.db
        echo $sdbname > $SETUPINFO
    fi
    if [ -f $sdbname ]; then
        echo cp $sdbname $DBNAME.db
        cp $sdbname $DBNAME.db
    else
        echo "File does not exist ($sdbname)."
        echo "Do mkdb first."
    fi
fi

echo -- Finished.---
exit
