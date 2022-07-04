{ lib, pkgs, ... }:
{
  programs.vscode = {
    enable = true;
    extensions = (with pkgs.vscode-extensions; [
      octref.vetur
      dbaeumer.vscode-eslint
      yzhang.markdown-all-in-one
      bungcip.better-toml
      github.vscode-pull-request-github
    ]) ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [{
      name = "Ruby";
      publisher = "rebornix";
      version = "0.28.1";
      sha256 = "1c051dbfed93fa7789e5a086890dfba423bac7aaf9ec72149cb9b86a983d2f9d";
    }] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [{
      name = "vscode-ruby";
      publisher = "wingrunr21";
      version = "0.28.0";
      sha256 = "1f77f5f9cdf5c7e9600b38604dbd2e2e0f41767de96722463cfc1fa4262b4bbd";
    }];
  };
}
