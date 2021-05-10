~$ cat sqltest.txt | while read url do; do curl -skL "$url" | if grep -io "error"; then echo $url-----------Vulnerable; else echo not vulnerable; fi ;done
