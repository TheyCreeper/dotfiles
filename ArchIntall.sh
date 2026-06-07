# Install wanted arch packages
yay -Syu --needed --noconfirm - < arch_pkgslist.txt

chsh -s /usr/bin/fish
konsave -i theme.knsv
konsave -a theme.knsv

