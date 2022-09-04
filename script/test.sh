#!/usr/bin/env bash
# -*- coding: utf-8 -*-

function assert() {
  diff -w ${1} ${2}
  return $?
}

COMMAND="cargo run -q --"
BASE_URL="http://www.ced.is.utsunomiya-u.ac.jp/lecture/2022/jikkenb/micro"
PROGRAMS="chap4/ex1 chap4/ex2 chap4/ex3 chap4/ex4 chap4/ex5 chap4/ex6 chap4/ex7 chap4/ex8 sample/muldivM sample/sumofM"

for PROGRAM in ${PROGRAMS}; do
  # Assemble the source program
  SOURCE=$(mktemp)
  curl -s ${BASE_URL}/${PROGRAM} | iconv -f sjis -t utf8 > ${SOURCE}
  ACTUAL=$(mktemp)
  ${COMMAND} ${SOURCE} -o ${ACTUAL}

  # Download the binary program
  EXPECTED=$(mktemp)
  curl -s ${BASE_URL}/${PROGRAM}.o | iconv -f sjis -t utf8 > ${EXPECTED}

  assert ${EXPECTED} ${ACTUAL}
  STATUS=$?
  if [ ${STATUS} -eq 0 ]; then
    echo "[SUCCESS]: $(basename $PROGRAM)"
  else
    echo "[FAILURE]: $(basename $PROGRAM)"
  fi
done

for PROGRAM in "chap5/MICROONE"; do
  # Assemble the source program
  SOURCE=$(mktemp)
  curl -s ${BASE_URL}/${PROGRAM} | iconv -f sjis -t utf8 | tr -d "\32" > ${SOURCE}
  ACTUAL=$(mktemp)
  ${COMMAND} ${SOURCE} -o ${ACTUAL}

  # Download the binary program
  EXPECTED=$(mktemp)
  curl -s ${BASE_URL}/${PROGRAM}.O | iconv -f sjis -t utf8 > ${EXPECTED}

  assert ${EXPECTED} ${ACTUAL}
  STATUS=$?
  if [ ${STATUS} -eq 0 ]; then
    echo "[SUCCESS]: $(basename $PROGRAM)"
  else
    echo "[FAILURE]: $(basename $PROGRAM)"
  fi
done
