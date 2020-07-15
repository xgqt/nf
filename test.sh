#!/usr/bin/env bash


message="
------------------------------
Tests summary:

"

result=0


function test_unit() {
    # $1 - test name
    # $2 - test command

    echo "Running the '${1}' test..."

    if eval "${2}"
    then
        echo "Passed the '${1}' test [OK]"
        message+="Passed the '${1}' test"
    else
        echo "Failed the '${1}' test [!!]"
        message+="Failed the '${1}' test"
        result=1
    fi

    message+="
Ran:
     '${2}'

"
}


test_unit "time" "time ./nf --travis -v"

test_unit "shellcheck" "shellcheck -e SC1117,SC2243,SC2244 nf"

test_unit "line length" "! grep '.\{102\}' nf"


echo "${message}"

if [ ${result} -eq 0 ]
then
    echo "Tests passed [OK]"
else
    echo "Tests failed [!!]"
fi
echo "------------------------------"

exit ${result}
