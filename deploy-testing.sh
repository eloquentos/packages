#!/bin/bash

if [ "${TRAVIS_PULL_REQUEST}" = "1" ]; then
    echo "This is a pull request, nothing to deploy"
    exit
fi

sshpass -e sftp -oBatchMode=no -oStrictHostKeyChecking=no -b - nimbusoft@frs.sourceforge.net << !
   cd /home/pfs/project/eloquentos/packages/testing
   put packages.tar.gz new.tar.gz
   rm old.tar.gz
   rename current.tar.gz old.tar.gz
   rename new.tar.gz current.tar.gz
   bye
!
