# networking.nix
{ config,  ... }:
{
    networking.networkmanager.enable = true;
      networking.hostName = "nixhole";
}