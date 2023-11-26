sudo pacman -Sy
sudo pacman -S --noconfirm --needed unzip

unzip ./MacSonoma-kde.zip
chmod +x ./MacSonoma-kde/install.sh

unzip ./WhiteSur-icon-theme.zip
chmod +x WhiteSur-icon-theme/install.sh

unzip ./WhiteSur-cursors.zip
chmod +x WhiteSur-cursors/install.sh

rm ./MacSonoma-kde.zip
rm ./WhiteSur-icon-theme.zip
rm ./WhiteSur-cursors.zip

echo "初始化已完成"
