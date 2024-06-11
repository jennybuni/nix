{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.initrd.kernelModules = [ "amd_pstate" ];
  boot.kernelParams = [ "psmouse.synaptics_intertouch=0" ]; 
}
