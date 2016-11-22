use Mix.Config

version =
  Path.join(__DIR__, "VERSION")
  |> File.read!
  |> String.strip

pkg = :nerves_system_bbb_kiosk

config pkg, :nerves_env,
  type: :system,
  version: version,
  compiler: :nerves_package,
  artifact_url: [],
  platform: Nerves.System.BR,
  platform_config: [
    defconfig: "nerves_defconfig",
  ],
  checksum: [
    "bbb-busybox.config",
    "rootfs-additions",
    "fwup.conf",
    "post-createfs.sh",
    "uboot",
    "uboot-script.cmd",
    "linux",
    "VERSION"
  ]
