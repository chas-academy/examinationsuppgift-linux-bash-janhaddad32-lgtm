#!/bin/bash


                             # Kontrollerar om det är en admin
if [ $UID != 0 ]; then 
echo "Välkommen (:"
exit

fi

                              #skapar användare
for användare in "$@"
do  
useradd -m $användare

                              #skapar mappar 
                              
mkdir /home/$användare/Dokuments
mkdir /home/$användare/Download
mkdir /home/$användare/Work

                              #skapar en fil

echo "välkommen tillbaka!" > /home/$användare/welcome.txt


                              #Rättigheter r,w,e
                              
chmod 700 /home/$användare/Dokuments
chmod 700 /home/$användare/Download
chmod 700 /home/$användare/Work



echo "$användare Done!!!!"


done
