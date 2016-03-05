# Installation script for ubuntu, linux
# System distribution must be dpkg based

#################### Core Packages ###################
# Installed packages on the system
INSTALLED_PACKS=$(dpkg -l | grep ^ii | sed 's_  _\t_g' | cut -f 2)
# Wanted Packages stored in an array, just extend it by adding packages to it
WANTED_PACKS=(
	codeblocks dos2unix filezilla firefox git giggle gimp gparted geany \
	ktorrent lm-sensors lp-solve mc mypaint p7zip p7zip-full putty \
	qtcreator vifm vim vlc wpagui wpasupplicant
)

# Install packages and autoremove needless ones
echo -e "Do you want to add these packages to your system? [Y/N] \n ${WANTED_PACKS[@]}"
read ANSWER
while [[ $ANSWER != "Y" && $ANSWER != "N" ]];
do 
	echo "Please answer [Y/N]" 
	read ANSWER
done
if [ $ANSWER == "Y" ]; then
	sudo apt-get install ${WANTED_PACKS[@]}
	sudo apt-get autoremove
fi

#################### Additional Packages ###################
# Additional Packages, which shuold be downloaded from the web
ARCH=$(uname -m)

if [ $ARCH == "x86_64" ]; then
	echo "64 bites architektúra"
elif [ $ARCH = "i386" ]; then	echo "32 bites architektúra" 
	echo "32 bites architektúra"
else exit
fi
 


#################### Additional Programs & Settings ####################

#Freemind 

# Git Settings
git config --global user.name	"Hajnal Máté"
git config --global user.email hajnalmt@gmail.com
git config --global core.editor subl
