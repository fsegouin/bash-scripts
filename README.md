# bash-scripts
Miscellaneous scripts

## switch-network
My main laptop at work is a Hac\*intosh and its built-in Wi-Fi network adapter
was not working (at all).

I bought a very cheap USB Wi-Fi dongle (RTL8188CUS compatible chip) which comes
with a crappy software made by someone who didn’t care at all about user
experience.

![screenshot-1](https://raw.githubusercontent.com/fsegouin/bash-scripts/master/switch-network/screenshot-1.png)

In this case, I couldn’t add two Wi-Fi networks in the same config file
because the software wouldn’t let me switch from one network to the other!

![screenshot-2](https://raw.githubusercontent.com/fsegouin/bash-scripts/master/switch-network/screenshot-2.png)

> See this little “Default” thing? There is no way I can remove it to connect to another network. Urgh! So annoying!

So I came with a solution, a very simple script that would let me switch from
pre-written config files with only 1 network in each and put it as the main
config file.

### Instructions

Run the following command lines in Terminal (Protip: use [iTerm2](http://iterm2.com/)):

1. Delete the original *ProfilesList.plist* file in */Applications/Wireless Network Utility.app/*
2. Open the app, scan networks, add the wanted network and make sure you're connected
3. Copy the newly created *ProfilesList.plist* with another name, following this pattern *ProfilesList-MyNetwork.plist*

```bash
$ cd /Applications/Wireless\ Network\ Utility.app/
$ cp ProfilesList.plist ProfilesList-Home.plist
```

You can do this for as many networks as you want (eg: ProfilesList-Work.plist, ProfilesList-Home.plist, etc)

4. Clone this repo

```bash
$ git clone https://github.com/fsegouin/bash-scripts
```

5. Let the magic happen...


```bash
$ chmod+x switch-network.sh
$ ./switch-network Home
$ ./switch-network Work
```

Nice and easy! :)
