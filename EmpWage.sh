#!/bin/bash -x

echo "Welcome to Employee Wage Computation Prograam on Master Branch"
presenty=$((RANDOM % 2))
isPresent=1

if [ $isPresent -eq $presenty ]
then
	saleryPerHr=20
	workHrPerDay=8
	salary=$((saleryPerHr * workHrPerDay))
	echo "Present"
else
	echo "Absent"
	salary=0
fi
echo "Salary: "$salary
