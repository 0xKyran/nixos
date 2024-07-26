# zsh.nix

# Contains configurations for zsh.

{ config, pkgs, ... }:

{
# Enable the zsh module.

  environment.systemPackages = with pkgs; [
  zsh
  ];

  programs.zsh = {
    enable = true;
    autosuggestions.enable = true;
    ohMyZsh.enable = true;
    ohMyZsh.plugins = [ "git" "history"];
    ohMyZsh.theme = "fino-time";
    shellAliases = {
      l = "ls -latr";
      nixos-update = "sudo nixos-rebuild switch";
      cls = "clear";
      fetch = "neofetch | lolcat";
      py = "python3";
      ipa = "ip a | grep 192.168 | awk '{print $2}' | cut -d '/' -f 1";
      server = "python3 -m http.server 6969";
      dry = "docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock -e DOCKER_HOST=$DOCKER_HOST moncho/dry";
    };
  };

}