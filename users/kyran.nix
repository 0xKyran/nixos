{ config, pkgs, ... }:
{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.kyran = {
    isNormalUser = true;
    description = "kyran";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
        discord
    ];
  };
}