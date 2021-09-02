# MaHost-single and MaHost-mass v1.0

##### Check for Host-Header injection on a single or multiple hosts
##### Saw a need and filled it using bash
##### Please check mahost-single.sh and mahost-mass.sh for instructions on running the scripts

Let's say you wanted to check if a certain host (some.domain.com) is susceptible to Host Injection attack,
and you wanted to use Burp Collaborator (or a service like 'requestbin.com') and Curl. Here is a solution!

----------------------------------------------------------------------------------------------------------
For a single host, enter "./mahost-single.sh" and follow the prompt (Enter Host-to-Scan and Burp Collaborator URL)
----------------------------------------------------------------------------------------------------------
@@
----------------------------------------------------------------------------------------------------------
For a multiple hosts, first create a list of subdomains in format: (https://some.domain.com) and save it to a file (list.txt)
Now run the command "./mahost-mass.sh" and follow the prompt (Enter list file [eg. list.txt] and then your Burp Collaborator URL)
----------------------------------------------------------------------------------------------------------
@@


Disclaimer: Please use this program ethically and follow all applicable laws. It is made to help companies secure their web applications, and I take no responsibility for what you do with it.

MaHost is licensed under the GNU GPL license.
