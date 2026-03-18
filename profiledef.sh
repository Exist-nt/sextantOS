#!/usr/bin/env zsh
# shellcheck disable=SC2034

iso_name="sextantos"
iso_label="SEXTANT_$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y%m)"
iso_publisher="Existnt Tech <https://existnt.net>"
iso_application="SextantOS Live/Rescue DVD"
iso_version="$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux'
           'uefi.systemd-boot')
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
bootstrap_tarball_compression=('zstd' '-c' '-T0' '--auto-threads=logical' '--long' '-19')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/etc/gshadow"]="0:0:400"
  ["/etc/sudoers.d"]="0:0:750"
  ["/etc/sudoers.d/g_wheel"]="0:0:440"
  ["/etc/ly/setup.sh"]="0:0:755"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/root/.gnupg"]="0:0:700"
  ["/root/.config/sway/scripts/hidpi_1.5.sh"]="0:0:755"
  ["/root/.config/sway/scripts/rofi_launcher"]="0:0:755"
  ["/etc/skel/.automated_script.sh"]="0:0:755"
  ["/etc/skel/.config/sway/scripts/hidpi_1.5.sh"]="0:0:755"
  ["/etc/skel/.config/sway/scripts/rofi_launcher"]="0:0:755"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
)
