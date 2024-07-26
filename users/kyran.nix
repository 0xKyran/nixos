{ config, pkgs, ... }:
{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  imports = [
    ../modules/zsh.nix
  ];
      


  users.users.kyran = {
    isNormalUser = true;
    description = "kyran";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
    packages = with pkgs; [
        discord
    ];
  };
}