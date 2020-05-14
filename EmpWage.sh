#!/bin/bash -x

echo "Welcome to Employee Wage Computation Prograam on Master Branch"
presenty=$((RANDOM % 3))
isPartTime=1
isFullTime=2
salaryPerHr=20

case $presenty in
	$isPartTime)
		echo "Present for part time"
		workHrs=4
		;;
	$isFullTime)
		echo "Present for Full Time"
		workHrs=8
		;;
	*)
		echo "Absent"
		;;
esac

salary=$((workHrs * salaryPerHr))
echo "Salary: "$salary
