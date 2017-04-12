#! /bin/bash
/opt/testssl/testssl.sh $1|grep "NOT ok"|wc -l 
