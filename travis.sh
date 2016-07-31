pacman -S sudo base-devel git --noconfirm
echo "%wheel ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/wheel
useradd eloquentos
usermod -aG wheel eloquentos
