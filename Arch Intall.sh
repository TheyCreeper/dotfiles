# Install wanted arch packages
yay -Syu --needed --noconfirm - < arch_pkgslist.txt

# Install gnome settings
./dot_config/gnome/install.sh

