#!/bin/bash -x

echo "Welcome to Employee Wage Computation Prograam on Master Branch"
presenty=$((RANDOM % 3))
isPartTime=1
isFullTime=2
salaryPerHr=20
totalSalary=0
workDays=20

for ((day=1; day<=$workDays; day++))
do
	presenty=$((RANDOM % 3))
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
	totalSalary=$(($totalSalary + $salary))
done

echo "Total Salary: "$totalSalary
