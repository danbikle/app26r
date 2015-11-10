#!/bin/bash

# ~/app26r/script/wgetGSPC.bash

# I should run this script at 6pm Calif time M-F
# Then run these shell commands:
# git commit -am moreData
# git push heroku master

.        ~/app26r/app26r.bash
mkdir -p ~ann/app26r/public/csv/
cd       ~ann/app26r/public/csv/

TKRH='%5EGSPC'
TKR='GSPC'
rm -f ${TKR}.csv

wget --output-document=${TKR}.csv  http://ichart.finance.yahoo.com/table.csv?s=${TKRH}
cat ${TKR}.csv | awk -F, '{print $1 "," $5}' |head -7601 > ${TKR}2.csv

exit
