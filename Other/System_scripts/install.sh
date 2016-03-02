# Installation script for ubuntu, linux

# Installed packages on the system
INSTALLED_PACKS=$(dpkg -l | grep ^ii | sed 's_  _\t_g' | cut -f 2)

# Wanted Packages stored in an array
WANTED_PACKS=(
	codeblocks dos2unix filezilla firefox git giggle gimp gparted geany /
	ktorrent lm-sensors lp-solve mc mypaint p7zip p7zip-full putty /
	qtcreator vifm vim vlc wpagui wpasupplicant
)

# Additional Packages, which shuold be downloaded from the web
#################### Additional Packages ###################

