# About

This is a set of scripts that help me set up my Pop! OS machines with development tools, some configurations and some other software (for example, Discord is included).

Of course, the components included in the script are the ones that I personally make use of, but it should be useful for anyone who wants to easily install / configure a subset (or all) of these components.

The downloader script is designed for ease of use and allows optional customization of the components to install / configure.

This should work (for the most part) for recent versions of Pop! OS above 20.04 on any computer, but I only really update and test it for the last version and computer I've had to run it, which currently is:

Tested on:

```
OS: Pop! OS 22.04
Machines: Framework laptop (batch 5) & ASUS ROG Strix SCAR III (2019)
```

It works on a fresh install, with no pre-requisites. I also wrote some notes to remember stuff I usually configure or install manually. They can be found in the [notes.md](./notes.md) document.

Oh, and one last thing, this script is idempotent, so it can be executed multiple times and things won't break, nor your .bashrc file will grow indefinitely. It will also attempt to update everything to the latest version.

Enjoy! :)

# Usage

## Method 1 (simplest, recommended)

Use the downloader:

`$ source <(wget -qO - pop-os.daniguardio.la)`

## Method 2 (advanced)

1. Download this repo as ZIP and extract it.
2. `$ cd <path>/pop-os-setup/`
3. (optional) Edit the components and configurations in `components.sh`.
4. `$ ./pop-os-setup.sh`

# To do

- [ ] Extract `.bashrc` insertions into a different file, and `source` it from `.bashrc` instead of inlining.
- [ ] Install Gnome extensions automatically.
- [ ] Add more automatic configurations: cosmic, keyboard layout, background...
- [ ] Set computer name.
- [ ] Framework laptop fingerprint reader setup script.
- [ ] Useful aliases: `g`, `wip` (`git add . && git commit -m "wip" && git push`).
