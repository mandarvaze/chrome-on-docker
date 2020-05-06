# On the Shoulders of other giants

This is based on Dockerfile created by jessfraz [here](https://github.com/jessfraz/dockerfiles/blob/master/chrome/stable/Dockerfile)
The [blog](https://blog.jessfraz.com/post/docker-containers-on-the-desktop/) that brought me there is more than 5 years old.

Fortunately the `Dockerfile` itself is "just" 15 months old (as of early May 2020)

Additionally, it seems that the blog post (and possibly the `Dockerfile`) may be written for linux host.
While Docker is supposed to host OS agnostic (?) on macOS I don't have `/dev/snd`

I also do not *need* sound for my "Chrome on Docker"

So what I have created in mainly for my own consumption.

I have made changes to the original `Dockerfile` to fix errors I got.

I have also downloaded `chrome.json` so that it may save you an additional step.

## Instructions

- Build the image using : `docker build . -t "google-chrome"`
- You need X server or some sort, like XQuartz.: `brew cask install xquartz`
- Open the `xterm` application from XQuartz (Right Click on XQuartz dock icon, Applications -> Terminal)
- Now from within the xterm,
  - cd to directory where you cloned this.
  - `./setxhost.sh`
  - This **must** be done form the `xterm` app
  - You may close the `xterm` app now, or keep it open.
- From iTerm2 (or `xterm` instance if already open) : `./run.sh`

## Bonus Tip

You can create an entry for the `setxhost.sh` using XQuartz's Applications->Customize menu.

Once "Customize" dialog is shown,
* Under column `name` - put any name. Easiest : `setxhost`
* Under column `command` (This is most important) type in the **full path** to the `setxhost.sh` script.
* Shortcut is optional.

Now after you start XQuartz, just run this via Applications menu and you are set.
