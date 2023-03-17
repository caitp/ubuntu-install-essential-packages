# ubuntu-install-essential-packages
Install kernel headers and the most up-to-date graphical (nvidia) driver on boot, to keep the desktop environment working across OS updates.

## Setup

I mean, [root](root/) is a root filesystem, so it's pretty basic -- just copy it in. However, you really want the shellscript to be +755 (if not +700).

Once you've done that, reload the systemd manager configuration

```sh
#as root, or another administrative user.
systemctl daemon-reload
```

## Why

I made this for me, but maybe it'll help you too, +/- fixups (Particularly if you have
different GPU requirements).

I will accept pull-requests which improve detection of essential packages, or allow some
configuration through a handy ini file, or something like that. If you want to get it to
work on arch-linux or some other distro, by all means fork it and host your own.

There's honestly no good reason for linux to suck such gigantic balls in 2023, and the only help available being on stackoverflow-type sites and old ass forums where it isn't 100% clear anybody actually knows anything. So I'm here doing my part by uploading a script to help my Elementary OS desktop environment be usable after installing OS updates, which break my nvidia drivers 100% of the time.

If you have a way to improve it, please help out or something.

## Big disclaimer:

I am not particularly security knowledgable, and if a patch is too hard for me to review and be confident in the safety of, I can't in good conscience accept it. I'm also not really a super-expert in Linux or Unix in general, so if there's a better way to do anything, let me know, but don't be weird about it. Nobody likes it when people are weird about it.

Obviously, I am not responsible at all if this breaks anything on your system, on your company's systems, or in your nuclear power plant.
