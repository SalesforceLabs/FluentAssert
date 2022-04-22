clear
rm -rf ../force-app/main/generated 
fmpp -S . -O ../force-app/main/generated
cd ..
sfdx force:source:push 
cd templates