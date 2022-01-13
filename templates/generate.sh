clear
rm -rf ../force-app/main/generated 
fmpp -S . -O ../force-app/main/generated
sfdx force:source:push