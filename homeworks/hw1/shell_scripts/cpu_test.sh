#! /bin/bash

echo "Hey, you are in $0, and about to test cpu!"

PRIMES_UPTO=("30000" "300000" "5000000")
MAX_TIME=("10" "30" "50")
THREADS=("1" "2" "16")
TEST_RUNS=5
TEST_CASES=3

for ((i=0; i<$TEST_CASES;i++))
do
	echo "*****************************Starting ${i+1}st Test Case***************************************"
	for (( j=1; j <=$TEST_RUNS; j++ ))
	do
		echo "Running ${j}st run of Test Case ${i+1}"
		sysbench cpu --threads=${THREADS[$i]} --cpu-max-prime=${PRIMES_UPTO[$i]} --time=${MAX_TIME[$i]} run
		echo "Completed ${j}st run of Test Case ${i+1}"
	done
	echo "*****************************Completed ${i}st Test Case***************************************"
done
