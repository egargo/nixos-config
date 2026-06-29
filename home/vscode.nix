{ pkgs, ... }:

{
  programs.vscode = {
    enable = true;
    profiles.default.extensions = with pkgs.vscode-extensions; [
      eamodio.gitlens
      ms-python.python
      ms-python.isort
      ms-python.black-formatter
    ];
  };
}
