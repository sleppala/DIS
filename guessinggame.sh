echo "How many files are there in this directory?"
read -p "Enter a number:" guess
echo "Your guess:" $guess

amount=$(ls -1 | wc -l)

Gz () {
	echo "Gongratulations!"
}

if  [ $amount == $guess ];
then
	Gz
else
	until [ $amount == $guess ];
	do
		echo "Wrong! You have to guess again."
		read -p "Enter a number:" guess
		echo "Your guess:" $guess
		if [ $amount -lt $guess ];
		then
			echo "Too high!"
		elif [ $amount -gt $guess ]
		then
			echo "Too low!"
		fi
	done
	Gz
fi

