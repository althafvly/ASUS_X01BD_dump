#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:55764268:6ff4a335149ed7c8063217bbb871541502f19c7f; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:51705128:ab56e7517d9045c5b2f62a386cb8df927c13a1b3 EMMC:/dev/block/bootdevice/by-name/recovery 6ff4a335149ed7c8063217bbb871541502f19c7f 55764268 ab56e7517d9045c5b2f62a386cb8df927c13a1b3:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
