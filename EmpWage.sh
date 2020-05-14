#!/bin/bash -x

echo "Welcome to Employee Wage Computation Prograam on Master Branch"
presenty=$((RANDOM % 3))
isPartTime=1
isFullTime=2
salaryPerHr=20

if [ $isPartTime -eq $presenty ]
then
	echo "Present for part time"
	workHrs=4
elif [ $isFullTime -eq $presenty ]
then
	echo "Present for Full Time"
	workHrs=8
else
	echo "Absent"
fi

salary=$((workHrs * salaryPerHr))
echo "Salary: "$salary
