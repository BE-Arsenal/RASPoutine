# Update / Upgrade
sudo apt-get update
sudo apt-get full-upgrade -y

# xserver
sudo apt-get --no-install-recommends install -y \
  xserver-xorg \
  xserver-xorg-video-fbdev \
  xinit \
  x11-xserver-utils \
  pciutils \
  xinput \
  xfonts-100dpi \
  xfonts-75dpi \
  xfonts-scalable

# Matchbox Windows Manager
sudo apt-get install -y matchbox

# Unclutter to remove mouse pointer
sudo apt-get install -y unclutter

# Browser
sudo apt-get install -y chromium

# Remove swap
sudo apt-get purge -y dphys-swapfile

# Remove unused dependencies
sudo apt-get autoremove -y
sudo apt-get clean -y