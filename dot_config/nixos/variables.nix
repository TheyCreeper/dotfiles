{ pkgs, ... }:

{
  environment.sessionVariables = {
    DOTNET_ROOT = "${pkgs.dotnet-sdk}/share/dotnet";
  };
}