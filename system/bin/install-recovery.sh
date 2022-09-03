#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/by-name/recovery:10299392:2e5afe61cbc92caaf606f9d92d6f1a1c02f86547; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/by-name/boot:7639040:6bb343e65a0f01f34b6643ba396b25cadff97722 EMMC:/dev/block/by-name/recovery 2e5afe61cbc92caaf606f9d92d6f1a1c02f86547 10299392 6bb343e65a0f01f34b6643ba396b25cadff97722:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
