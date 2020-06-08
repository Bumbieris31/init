read -p 'Please, enter user you want to delete : ' username

entries=$(who -a | grep -v '^ ' | grep -c $username)

if (($entries > 0))
then
	pkill -u $username
	userdel $username
	echo Username $username has been deleted
	else
	echo Username $username was not found
fi
