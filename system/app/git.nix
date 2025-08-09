{ me, ... }:

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
      github.user = me.git.github;
      gpg.format = "ssh";
      init.defaultbranch = "master";
      pull.rebase = "interactive";
      push.autoSetupRemote = true;
      tag.gpgSign = true;
      user = {
        email = me.git.email;
        name = me.git.name;
        signingkey = me.git.sshKey;
      };
    };
  };

  programs.lazygit.enable = true;
}
