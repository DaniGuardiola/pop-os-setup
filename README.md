# About

This is a set of scripts that help me set up my Pop! OS machine with development tools, some configurations and some other software (for example, steam and discord are included).

Of course, the components included in the script are the ones that I personally make use of, but it should be useful for anyone who wants to easily install / configure a subset (or all) of these components.

The downloader script (this one) is designed for ease of use and allows optional customization of the components to install / configure.

This should work (for the most part) for recent versions of Pop! OS above 20.04 on any computer, but I only really update and test it for the last version and computer I've had to run it, which currently is:

```
OS: Pop! OS 21.10
Computer: Framework laptop.
```

It works on a fresh install, with no pre-requisites.

Oh, and one last thing, these scripts are idempotent, so you can execute them multiple times and things won't break, nor your .bashrc file will grow indefinitely.

Enjoy! :)

# Usage

## Method 1 (simplest, recommended)

Use the downloader:

`$ source <(wget -qO - pop-os.daniguardio.la)`

## Method 2 (advanced)

1. Download this repo as ZIP and extract it.
2. `$ cd <path>/pop-os-setup/`
3. (optional) Edit the components and configurations sections in `components.sh`.
4. `$ sudo chmod +x pop-os-setup.sh`
5. `$ ./pop-os-setup.sh`

# To do

- [ ] Make the downloader work with the repo version.
- [ ] Set up `pop-os.daniguardio.la` domain.
- [ ] Clean up stuff I don't use anymore.
- [ ] Extract `.bashrc` insertions into a different file, and `source` it from `.bashrc` instead.
- [ ] Move everything to flatpak and test.
- [ ] Add terminal aliases for all flatpak software.
- [ ] General clean up, fixes, testing...
- [ ] Restore GNOME extensions support.
- [ ] Make GNOME extensions configurable in `components.sh`.
- [ ] Handle dependencies better.
- [ ] Add some more software: Slack, Spotify, Stremio, Peek, direnv.
- [ ] Add more configurations: launcher, workspaces, window tiling, desktop background, keyboard layouts (`en` & `es`).
- [ ] Add timezones GNOME extension.
- [ ] Support firmware updating.
- [ ] Zsh???
