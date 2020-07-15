#!/usr/bin/env bash


message="
------------------------------
Test results:

"

result=0


if time ./nf --travis -v
then
    message+="Passed the time test"
else
    message+="Failed the time test"
    result=1
fi
message+="
Ran:
     time ./nf --travis -v

"

if shellcheck -e SC2244 -e SC2243 nf || exit 1
then
    message+="Passed the shellcheck test"
else
    message+="Failed the shellcheck test"
    result=1
fi
message+="
Ran:
     shellcheck -e SC2244 -e SC2243 nf

"

if ! grep '.\{102\}' nf
then
    message+="Passed the line length test"
else
    message+="Failed the line length test"
    result=1
fi
message+="
Ran:
     ! grep '.\{102\}' nf

"


echo "${message}"

if [ ${result} -eq 0 ]
then
    echo "Tests passed"
else
    echo "Tests failed"
fi
echo "------------------------------"
    
exit ${result}
