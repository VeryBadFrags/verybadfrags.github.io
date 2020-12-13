---
published: false
---
Shadow is a cloud gaming service that lets you "rent" a remote gaming PC VM and stream its content on your local client.
The lowest tier is currently available for $11.99 / month and lets you game on a GeForce GTX 1080 equivalent with 256 GB of storage.
The platform supports Windows, macOS, Linux, Android, iOS/ipadOS and tvOS.

While this is definitely not the most affordable way to code on an iPad, it is a viable solution if you are already paying for the service for gaming. In my experience, Shadow is the cloud gaming service with the most stable streaming performances.

## Requirements

* A [compatible client](https://shadow.tech/shadow-apps)
* A [Shadow](https://shadow.tech) subscription (use code `LOI0MSH6` to support this blog)
* An iPad with ipadOS 11 or later
* A keyboard for your iPad
* Optional: a trackpad or Bluetooth mouse, the experience will be significantly better

## Setup

Note: on an iPad without a cursor pointer, you can long press on your screen to emulate a right click.

* Start Shadow
* If you are already on your iPad, long press on the desktop, select `Display settings` and set the scale to at least 150%
* Setup [WSL](https://aka.ms/wslinstall)
    * Restart your VM after step 3
    * Ignore the steps related to WSL 2 (Steps 4 and 5)
    * To get an elevated prompt on your iPad without a pointer, press the `cmd` key, type `cmd`, then long press `Command Promt` and select `Run as administrator`
* Install your favorite Linux flavor from the [Windows Store](https://www.microsoft.com/en-us/search?q=wsl) (I went for the most recent Ubuntu LTS)
* Start the Linux Distribution you have just installed and set up your user
    * If you get an error during the initialization step, try to force WSL 1 in an elevated prompt: `wsl --set-default-version 1`
    * Update your distribution for good measure
* Install [Visual Studio Code](https://code.visualstudio.com) or [VSCodium](https://vscodium.com)
* Install [Git](https://git-scm.com)
* Start VSCode and install the [Remote - WSL](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl) extension from the Extension menu
* Click the green `><` in the bottom left, and select `Remote-WSL: New Window`
* Open a terminal inside VSCode with `control + \``
* Congratulations, you now have a modern coding environment on your iPad
    * The VSCode extensions need to be installed from within the WSL window to be usable
    * I recommend checking `Help > Keyboard Shortcut Reference` if you are not using a mouse

If you run into any issue, feel free to ask in the comments.