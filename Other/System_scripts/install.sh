# Installation script for Ubuntu, linux
# System distribution must be dpkg based
# The additional packages will be downloaded in a bin directory at your home, which is loaded when you boot your computer.
# So a reboot is necessarry

# Function just to print green info messages
function info {
        tput setaf 2; echo $@
}

#################### Core Packages ###################
# Installed packages on the system
INSTALLED_PACKS=$(dpkg -l | grep ^ii | sed 's_  _\t_g' | cut -f 2)
# Wanted Packages stored in an array, just extend it by adding packages to it
WANTED_PACKS=(
	codeblocks dos2unix filezilla firefox git giggle gimp gparted geany \
	ktorrent libappindicator1 libindicator7 libxss1 lm-sensors lp-solve mc \
	mypaint p7zip p7zip-full putty qtcreator synaptic texlive \
	texlive-full texlive-lang-hungarian ttf-mscorefonts-installer vifm vim \
	vlc wpagui wpasupplicant
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
	sudo apt-get -y install ${WANTED_PACKS[@]}
	sudo apt-get autoremove
fi

#################### Additional Packages ###################
# Additional Packages, which should be downloaded from the web

# Architecture type
ARCH=$(uname -m)

# Change to your home directory
cd ~

# Download packages from web and then install them
if [ $ARCH == "x86_64" ]; then
	if [ ! -d Programs_64 ]; then
		mkdir Programs_64
	fi
	cd ~/Programs_64
	# If the package isn't installed install it, if it isn't downloaded download it also.
	
	#CHROME#  
	if [ ! -e "/usr/bin/google-chrome-stable" ]; then
		if [ ! -e "~/Programs_64/google-chrome-stable_current_amd64.deb" ]; then 
			wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
		fi
		sudo dpkg -i google-chrome-stable_current_amd64.deb
	fi

	#SUBLIME#
        if [ ! -e "/usr/bin/subl" ]; then
                if [ ! -e "~/Programs_64/sublime-text_build-3103_amd64.deb" ]; then
                        wget https://download.sublimetext.com/sublime-text_build-3103_amd64.deb
                fi
                sudo dpkg -i sublime-text_build-3103_amd64.deb
        fi

	#VIRTUALBOX#
        if [ ! -e "/usr/bin/virtualbox" ]; then
                if [ ! -e "~/Programs_64/virtualbox-5.0_5.0.16-105871~Ubuntu~trusty_amd64.deb" ]; then
                        wget http://download.virtualbox.org/virtualbox/5.0.16/virtualbox-5.0_5.0.16-105871~Ubuntu~trusty_amd64.deb
                fi
                sudo dpkg -i virtualbox-5.0_5.0.16-105871~Ubuntu~trusty_i386.deb
        fi


elif [ $ARCH == "i386" ]; then 
	if [ ! -d Programs_32 ]; then
                mkdir Programs_32
        fi
        cd ~/Programs_32
        # If the package isn't installed -> install it, if it isn't downloaded -> download it also.

        #CHROME#  
        if [ ! -e "/usr/bin/google-chrome-stable" ]; then
                if [ ! -e "~/Programs_32/google-chrome-stable_current_i386.deb" ]; then
                	wget https://dl.google.com/linux/direct/google-chrome-stable_current_i386.deb
                fi
                sudo dpkg -i google-chrome-stable_current_i386.deb
        fi
	
	#SUBLIME#
        if [ ! -e "/usr/bin/subl" ]; then
                if [ ! -e "~/Programs_32/sublime-text_build-3103_i386.deb" ]; then
                	wget https://download.sublimetext.com/sublime-text_build-3103_i386.deb
                fi
                sudo dpkg -i sublime-text_build-3103_i386.deb
        fi

	#VIRTUALBOX#
        if [ ! -e "/usr/bin/virtualbox" ]; then
                if [ ! -e "~/Programs_32/virtualbox-5.0_5.0.16-105871~Ubuntu~trusty_i386.deb" ]; then
                        wget http://download.virtualbox.org/virtualbox/5.0.16/virtualbox-5.0_5.0.16-105871~Ubuntu~trusty_i386.deb
                fi
                sudo dpkg -i virtualbox-5.0_5.0.16-105871~Ubuntu~trusty_i386.deb
        fi


else exit
fi

#################### Additional Programs & Settings ####################

# Freemind
# The starting method is the same, download the package, but in this case we unzip it 
if [ ! -e "freemind-bin-max-1.0.1.zip" ]; then
	wget http://downloads.sourceforge.net/project/freemind/freemind/1.0.1/freemind-bin-max-1.0.1.zip
fi
if [ ! -d "Freemind" ]; then
	unzip freemind-bin-max-1.0.1.zip
fi
if [ ! -e "$HOME/bin" ]; then
	mkdir $HOME/bin
fi

if [ ! -e $HOME/bin/freemind.sh ]; then
	if [ $ARCH = "x86_64" ];then
		ln -s ~/Programs_64/Freemind/freemind.sh $HOME/bin/freemind.sh
	elif [ $ARCH = "i386" ]; then
		ln -s ~/Programs_32/Freemind/freemind.sh $HOME/bin/freemind.sh
	else exit
	fi
fi

# Git Settings, change it to yours
git config --global user.name "Hajnal Máté"
git config --global user.email hajnalmt@gmail.com
git config --global core.editor subl
git config --global push.default simple

# Set system core editor to sublime
IS_EDITOR_SETTED=$(grep 'EDITOR="/usr/bin/subl" ; export EDITOR' ~/.bashrc)
if [[ "$IS_EDITOR_SETTED" == "" ]]; then
	echo -e '\nEDITOR="/usr/bin/subl" ; export EDITOR' >> ~/.bashrc 
fi

