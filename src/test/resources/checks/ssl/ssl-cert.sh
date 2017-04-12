#! /bin/bash
/opt/testssl/testssl.sh -S $1|grep expires|wc -l 
