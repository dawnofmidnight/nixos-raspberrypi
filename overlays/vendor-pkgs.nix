self: super: { # final: prev:

  libraspberrypi = super.callPackage ../pkgs/raspberrypi/libraspberrypi.nix {};

  raspberrypi-userland = self.libraspberrypi;

  raspberrypi-udev-rules = super.callPackage ../pkgs/raspberrypi/udev-rules.nix {};

  raspberrypi-utils = super.callPackage ../pkgs/raspberrypi/raspberrypi-utils.nix {};

  rpi-userland = self.libraspberrypi;

  rpicam-apps = super.callPackage ../pkgs/raspberrypi/rpicam-apps.nix {
    libcamera = self.libcamera_rpi;
  };

}
