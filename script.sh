#!/bin/bash

cd ../src/data/sample

cp ../../../tcframe/tc/tcframe_sample_* .

prefix="sample";
j=0;
for i in $(ls tcframe_sample_*.in);
    do mv $i ${prefix}_${j}.in;
    j=$((j+1));
done;

prefix="sample";
j=0;
for i in $(ls tcframe_sample_*.out);
    do mv $i ${prefix}_${j}.ans;
    j=$((j+1));
done;

cd ../secret

cp ../../../tcframe/tc/tcframe_?.* .
cp ../../../tcframe/tc/tcframe_??.* .

prefix="secret";
j=0;
for i in $(ls tcframe_*.in);
    do mv $i ${prefix}_${j}.in;
    j=$((j+1));
done;

prefix="secret";
j=0;
for i in $(ls tcframe_*.out);
    do mv $i ${prefix}_${j}.ans;
    j=$((j+1));
done;