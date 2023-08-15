#!/bin/sh

echo "1) linux"
echo "2) windows"
echo "3) mac"
read -p "Enter your choice: " choice

if [ $choice -eq 1 ] 
then
    echo "You chose linux"
    GOOS=linux GOARCH=amd64 go build -o bin/wireguard-ui-linux
elif [ $choice -eq 2 ] 
then
    echo "You chose windows"
    GOOS=windows GOARCH=386 go build -o bin/wireguard-ui.exe
elif [ $choice -eq 3 ] 
then
    echo "You chose mac"
    GOOS=darwin GOARCH=amd64 go build -o bin/wireguard-ui-darwin
fi