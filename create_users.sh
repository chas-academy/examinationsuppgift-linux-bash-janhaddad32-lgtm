#!/bin/bash


                             # Kontrollerar om det är en admin
if [ $UID !=0 ]; then 
echo "Tjena Admin. (:"
exit

fi

                              #skapar användare
for användare in "$@"
do  
useradd -m $användare

                              #skapar mappar 
                              
mkdir /home/$användare/Chasacademy
mkdir /home/$användare/Github
mkdir /home/$användare/Virtualbox

                              #skapar en fil

echo "välkommen tillbaka!" > /home/$användare/textfil.txt


                              #Rättigheter r,w,e
                              
chmod 700 /home/$användare/Chasacademy
chmod 700 /home/$användare/Github
chmod 700 /home/$användare/Virtualbox



echo "$användare Done!!!!"


done
