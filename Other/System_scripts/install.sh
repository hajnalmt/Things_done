# Installation script for Ubuntu, linux
# System distribution must be dpkg based


#################### Core Packages ###################
# Installed packages on the system
INSTALLED_PACKS=$(dpkg -l | grep ^ii | sed 's_  _\t_g' | cut -f 2)
# Wanted Packages stored in an array, just extend it by adding packages to it
WANTED_PACKS=(
	codeblocks dos2unix filezilla firefox git giggle gimp gparted geany \
	ktorrent libappindicator1 libindicator7 libxss1 lm-sensors lp-solve mc mypaint p7zip p7zip-full putty \
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
# Additional Packages, which should be downloaded from the web
# Packages: Chrome
ARCH=$(uname -m)

# Change to your home directory
cd /~

# Download packages from web and then install them
if [ $ARCH == "x86_64" ]; then
	if [ -d Programs_64]; then
		mkdir Programs_64
	fi
	cd ~/Programs_64
	# Download packages from web.  
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	sudo dpkg -i *.deb
	
elif [ $ARCH = "i386" ]; then	echo "32 bites architektúra" 
	if [ -d Programs_32]; then
                mkdir Programs_32
        fi
        cd ~/Programs_32
        # Download packages from web.  
        wget https://dl.google.com/linux/direct/google-chrome-stable_current_i386.deb
	sudo dpkg -i *.deb
else exit
fi
 


#################### Additional Programs & Settings ####################

# Freemind 

# Git Settings
git config --global user.name	"Hajnal Máté"
git config --global user.email hajnalmt@gmail.com
git config --global core.editor subl
