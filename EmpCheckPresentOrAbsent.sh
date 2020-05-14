#!/bin/bash -x

echo "Welcome to Employee Wage Computation Prograam on Master Branch"
presenty=$((RANDOM % 2))
isPresent=1
if [ $isPresent -eq $presenty ]
then
	echo "Present"
else
	echo "Absent"
fi
