# Ansible

Ansible Playbook to automatically setup my workstation

1. `git clone https://gitlab.com/gobbox/ansible`
2. `cd ansible`
3. `./start.sh`
4. after reboot `./start.sh`

## Packages

### RPM-Ostree

- fish
- gnome-tweak-tool
- libgnome-keyring

### Toolbox DNF

- vim

### Flatpaks

- signal
- bitwarden
- spotify
- blender
- darktable
- celluloid (mpv)
- godot
- gnome evolution
- gnome contacts
- vscode OSS
- steam
- nextcloud sync client
- krita
- libreoffice
- gnome boxes
- kdenlive
- shortcut

### AppImages

- MineTime

## Settings

### Gnome Settings

- theme
- minimize button
- battery percentage
- background & scale
- favorite apps
- display idle timeout
- night light

## Extensions

### Firefox

- bitwarden
- gnome-shell-integration

### Gnome Shell

- alt-tab-switcher-popup-delay-removal
- drop-down-terminal-x
- cpufreq
- hide-activities-button
- launch-new-instance
- remove-dropdown-arrows
- sound-output-device-chooser
- vitals
- status-area-horizontal-spacing

### Not automated (yet)

- nextcloud sync login
- gnome accounts

---

## Notes

> Installing vscodium gui application in toolbox

### toolbox vscodium

```bash
#!/bin/bash
sudo tee -a /etc/yum.repos.d/vscodium.repo << 'EOF'
[gitlab.com_paulcarroty_vscodium_repo]
name=gitlab.com_paulcarroty_vscodium_repo
baseurl=https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/repos/rpms/
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg
EOF
```

```bash
sudo dnf install codium libX11-xcb dejavu-sans-fonts google-droid-sans-fonts
alias codium "toolbox run codium" && funcsave codium
```
