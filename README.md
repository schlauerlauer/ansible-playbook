# Ansible

Ansible Playbook to automatically setup my workstation

1. `git clone https://gitlab.com/gobbox/ansible`
2. `cd ansible`
3. `sudo ./start.sh`
4. after reboot `sudo ./ansible.sh`

---

## ToDo

- Blender (fh)
- darktable (fh)
- mpv / celluloid
- godot (fh)
- krita (fh)
- shortcut (fh)
- evolution
- libreoffice (fh)
- steam (fh)
- gnome boxes (fh)
- minetime (fh) .desktop to .local/share/applications (same as vscodium)
- vscodium .desktop ansible / flatpak
- nextcloud-client

### RPM Ostree Packages

- rpm-ostree update
- fish
- set -U fish_greeting ""
- gnome-tweak-tool
- (nextcloud-client) libgnome-keyring

### Firefox Addons

- Bitwarden

### Flatpak (host)

- ´flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo`
- flatpak install spotify
- vim
- signal
- flatpak install flathub com.bitwarden.desktop

### Aliases

> alias befehl "langer befehl"
> funcsave befehl

- alias vim "flatpak run org.vim.Vim"
- alias bitwarden "flatpak run com.bitwarden.desktop"
- alias codium "toolbox run codium"

### Gnome Tweaks

- Erscheinungsbild -> Anwendungen -> Adwaita-dark
- Fenstertitelleisten -> Minimieren -> An
- Obere Leiste -> Prouentsatz der Akkuladung -> An

### Gnome Extensions

- Hide Activities Button

### Toolbox DNF

- update
- vim
- fish
- wget https://github.com/marcoancona/MineTime/releases/download/v1.6.4/MineTime-1.6.4.x86_64.rpm und dnf install minetime

#### vscodium

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

- codium
- libX11-xcb
- dejavu-sans-fonts
- google-droid-sans-fonts
