#!/bin/bash -x

echo "Welcome to Employee Wage Computation Prograam on Master Branch"
presenty=$((RANDOM % 3))
isPartTime=1
isFullTime=2
salaryPerHr=20
totalSalary=0
workDays=20
totalHrs=0
days=0

while [ $totalHrs -le 100 -a $days -le 20 ]
do
	presenty=$((RANDOM % 3))
	case $presenty in
		$isPartTime)
			echo "Present for part time"
			workHrs=4
			$((days++))
			;;
		$isFullTime)
			echo "Present for Full Time"
			workHrs=8
			$((days++))
			;;
		*)
			echo "Absent"
			;;
	esac
	totalHrs=$(($totalHrs + $workHrs))
	salary=$((workHrs * salaryPerHr))
	totalSalary=$(($totalSalary + $salary))
done
echo "Total Hours: "$totalHrs
echo "Total Salary: "$totalSalary
