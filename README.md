# RASPoutine (thanks @tibuski)
Raspberry Headless Kiosk

## 👀 Features
* Based on latest 64bit Rasbian **Lite** image
* Running on a 32Gb SD Card
* Use `X11` with `Matchbox Windows Manager` to display Chromium in Kiosk mode at boot.
* Clone this repository and follow the instructions below.

## 💻 Installation

### 🏃 Install with Pi Imager

* Use Raspberry [Pi OS Imager](https://www.raspberrypi.com/software/) for initial SD card install
* select the lastest image 64Bit Rasbian **Lite**
* Since Bookworm, you have to use RPI Imager to write the SD Card, setup Wifi, User, Locale and Keyboard Layout.
* If you forgot to enable SSH in the second Tab, you can create/copy an empty `ssh` file on the root of `bootfs` partition.  

### ✋ Manual Installation

* Download the latest 64bit Rasbian **Lite** image [here]("https://www.raspberrypi.com/software/operating-systems/")
* Choose a user/password (⚠️ keyboard in UK)
* Connect locally on the RaspberryPi with credential 
* configure **WIFI** and enbale **SSH**  with command :`sudo raspi-config`

### ⚙️ Staging

* Clone this repository.
* Modify the Web page URL you want to display in `xinitrc` 
* Run : `./staging.sh [USER]@[RASPBERRY] [IP]`  
  * [USER] = current User Name
  * [RASPBERRY] = Hostname of the device
  * [IP] = Ip oh the device
* Raspberry should reboot and open Chromium in Kiosk mode on the url from `xinitrc`

### ✏️ Modify Url

* Connect on the console (local or SSH)
* Modify the Web page URL you want to display in `xinitrc`
* Run : `./staging.sh [USER]@[RASPBERRY] [IP]`  
* reboot


## 🗒️ Todo

* Test : Install your public key in the raspberry's authorized_keys with `ssh-copy-id`
