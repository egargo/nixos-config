{
  programs.git = {
    enable = true;
    config = {
      branch.autosetuprebase = "always";
      commit.gpgSign = true;
      core = {
        autocrlf = "input";
        editor = "nvim";
      };
      github.user = "egargo";
      gpg.format = "ssh";
      init.defaultbranch = "master";
      pull.rebase = "interactive";
      push.autoSetupRemote = true;
      tag.gpgSign = true;
      user = {
        email = "67180945+egargo@users.noreply.github.com";
        name = "Clint Egargo";
        signingkey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHSg8Ldg28td1Mv7nqVAKznH1i0PMyR4wTM6XJnVUysy 67180945+egargo@users.noreply.github.com";
      };
    };
  };

  programs.lazygit = {
    enable = true;
    settings = {
      git = {
        autoFetch = false;
        autoRefresh = false;
      };
    };
  };
}
