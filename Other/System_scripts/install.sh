# Installation script for Ubuntu, linux
# System distribution must be dpkg based
# The additional packages will be downloaded in a bin directory at your home, which is loaded when you boot your computer.
# So a reboot is necessarry

# Function just to print green info messages, and yellow questions
function info {
        tput setaf 2; echo -e $@; tput setaf 7
}

function ask {
        tput setaf 3; echo -e $@; tput setaf 7
}

#################### Core Packages ###################
# Installed packages on the system
INSTALLED_PACKS=$(dpkg -l | grep ^ii | sed 's_  _\t_g' | cut -f 2)
# Wanted Packages stored in an array, just extend it by adding packages to it
WANTED_PACKS=(
	codeblocks dos2unix filezilla firefox git git-annex giggle gimp gparted geany \
	gnome-paint grub-pc-bin gthumb ktorrent libappindicator1 libindicator7 libxss1 lm-sensors \	
	lp-solve ntfs-3g mc mypaint pinta p7zip p7zip-full putty qtcreator synaptic texlive \
	texlive-full texlive-lang-hungarian ttf-mscorefonts-installer usb-creator-kde \
	unetbootin vifm vim vlc wpagui wpasupplicant
	# packages for Node.js and NPM
	build-essential curl m4 ruby texinfo libbz2-dev libcurl4-openssl-dev libexpat-dev libncurses-dev zlib1g-dev
)

# Install packages and autoremove needless ones
ask "Do you want to add these packages to your system? [Y/N]" 
echo "${WANTED_PACKS[@]}"
read ANSWER
while [[ $ANSWER != "Y" && $ANSWER != "N" ]];
do 
	echo "Please answer [Y/N]" 
	read ANSWER
done
if [ $ANSWER == "Y" ]; then
	sudo apt-get -y install ${WANTED_PACKS[@]}
	sudo apt-get autoremove
	info "Core packages installed"
fi

#################### Additional Packages ###################
# Install sublime package manager
if [ ! -e "$HOME/.config/sublime-text-3/Installed Packages/Package Control.sublime-package" ]; then
	ask "Do you want to install sublime package manager? [Y/N]"
	read ANSWER
	while [[ $ANSWER != "Y" && $ANSWER != "N" ]];
	do
	     	echo "Please answer [Y/N]" 
	        read ANSWER
	done
	if [ $ANSWER == "Y" ]; then
		SUBLIME_PACKAGE_PATH="$HOME/.config/sublime-text-3/Installed Packages/"
		cd "$SUBLIME_PACKAGE_PATH"
		wget https://packagecontrol.io/Package%20Control.sublime-package
		info "Sublime Package Controller installed"
	fi
fi

# Install google-drive-ocamlfuse
ask "Do you want to mount your Google drive? [Y/N]"
read ANSWER
while [[ $ANSWER != "Y" && $ANSWER != "N" ]];
do
	echo "Please answer [Y/N]" 
        read ANSWER
done
if [ $ANSWER == "Y" ]; then
	sudo add-apt-repository ppa:alessandro-strada/ppa
	sudo apt-get update
	sudo apt-get install google-drive-ocamlfuse ocaml camlp4-extra
	# if the above process reports that OPAM could not be installed, as it is not provided by any package for your distribution, you have to compile and install it using following commands
	# git clone https://github.com/OCamlPro/opam.git
	# cd opam
	# ./configure
	# make
	# sudo make install
	info "Your Google drive is mounted."
fi


# Additional Packages, which should be downloaded from the web
ask "Do you want to install Homebrew (Linuxbrew) package manager for Node.js and NPM? [Y/N]"
read ANSWER
while [[ $ANSWER != "Y" && $ANSWER != "N" ]];
do 
	echo "Please answer [Y/N]" 
	read ANSWER
done
if [ $ANSWER == "Y" ]; then
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"
	IS_LINUXBREW_ADDED=$(grep 'PATH="$HOME/.linuxbrew/bin:$PATH"' ~/.bashrc)
	if [[ "$IS_EDITOR_SETTED" == "" ]]; then
		echo -e 'export PATH="$HOME/.linuxbrew/bin:$PATH"' >> ~/.bashrc 
		echo -e 'export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"' >> ~/.bashrc 
		echo -e 'export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"' >> ~/.bashrc 
		brew update
		brew install node
 		info "Homebrew (Linuxbrew) configured, use node -v and npm -v for testing it out. Also use brew update or brew upgrade node for checking out new versions. (Uninstallation by the brew uninstall node command)"
	fi
fi


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

info "All additional packages installed"
#################### Additional Programs & Settings ####################

# Freemind
ask "Do you want to install Freemind? [Y/N]"
read ANSWER
while [[ $ANSWER != "Y" && $ANSWER != "N" ]];
do 
	echo "Please answer [Y/N]" 
	read ANSWER
done
if [ $ANSWER == "Y" ]; then

	# The starting method is the same, download the package, but in this case we unzip it 
	if [ ! -e "freemind-bin-max-1.0.1.zip" ]; then
		wget http://downloads.sourceforge.net/project/freemind/freemind/1.0.1/freemind-bin-max-1.0.1.zip
	fi
	if [ ! -d "Freemind" ]; then
		mkdir Freemind
	else
		cd ./Freemind
		unzip ../freemind-bin-max-1.0.1.zip
	fi
	if [ ! -e "$HOME/bin" ]; then
		mkdir $HOME/bin
	fi

	if [ ! -e $HOME/bin/freemind.sh ]; then
		if [ $ARCH = "x86_64" ];then
			ln -s ~/Programs_64/Freemind/freemind.sh $HOME/bin/freemind.sh
			info "Freemind installed and added o PATH"
		elif [ $ARCH = "i386" ]; then
			ln -s ~/Programs_32/Freemind/freemind.sh $HOME/bin/freemind.sh
		info "Freemind installed and added o PATH"
		else exit
		fi
	fi
fi
# Git Settings, change it to yours
ask "Do you want to configure and set your git? [Y/N]"
read ANSWER
while [[ $ANSWER != "Y" && $ANSWER != "N" ]];
do 
	echo "Please answer [Y/N]" 
	read ANSWER
done
if [ $ANSWER == "Y" ]; then
	git config --global user.name "Hajnal Máté"
	git config --global user.email "hajnalmt@gmail.com"
	git config --global core.editor subl
	git config --global push.default simple
	info "Git is configured"
fi


# Set system core editor to sublime
IS_EDITOR_SETTED=$(grep 'EDITOR="/usr/bin/subl" ; export EDITOR' ~/.bashrc)
if [[ "$IS_EDITOR_SETTED" == "" ]]; then
	echo -e '\nEDITOR="/usr/bin/subl" ; export EDITOR' >> ~/.bashrc 
	info "Base Editor Setted to sublime"
fi
