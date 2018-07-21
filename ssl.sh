#!/bin/bash

#
# Check openssl
if [ ! -x /usr/bin/openssl ]
then
	printf "Please install openssl before run this script.\n"
	exit 1
fi

# Check parameters
if [[ $# -ne 1 ]]
then
	printf "Usage: ${0} <example.com>\n"
	exit 1
fi

# Check SSL
domain=${1}
expDate=$(mktemp)

if printf "" | openssl s_client -connect ${domain}:443 2> /dev/null | openssl x509 -noout -dates 2> /dev/null | grep -i after > ${expDate}
then
	cutExpDate=$(awk -F= '{print $2}' ${expDate} |awk '{print $1" "$2" "$4}')
	convertExpDate=$(date --date="${cutExpDate}" +"%y%m%d")
	daysLeft=$(echo $((($(date --date="${convertExpDate}" +%s) - $(date +%s))/(60*60*24))))

	if [[ ${daysLeft} -le 0 ]]
	then
		printf "0\n"
	else
		printf "${daysLeft}\n"
	fi

	rm ${expDate}
	exit 0
else
	printf "No HTTPS service on ${domain}\n"
	rm ${expDate}
	exit 1
fi

