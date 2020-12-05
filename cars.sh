#! /bin/bash
#cars.sh
#Brynn McGovern


while True;
do
	echo "Enter 1 to add a car, 2 to list the cars on file, or 3 to quit"
	read input
	case $input in
		1)
			str=" "
			echo "Please enter year"
			read year
			str=$str$year":"
			echo "Please enter the make"
			read make
			str=$str$make":"
			echo "Please enter the model"
			read model
			str=$str$model
			echo "$str" >> my_old_cars
			;;
		2)
			sort my_old_cars
			;;
		3)
			echo "Goodbye"
			break
			;;
	esac
done
