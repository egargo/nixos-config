{ me, ... }:

{
  programs.git = {
    enable = true;
    userEmail = me.email;
    userName = me.name;
    signing = {
      format = "ssh";
      key = "/home/${me.username}/.ssh/${me.sshKey}";
      signByDefault = true;
    };
    extraConfig = {
      branch.autosetuprebase = "always";
      core = {
        autocrlf = "input";
        editor = "nvim";
      };
      github.user = me.github;
      init.defaultBranch = "master";
      pull.rebase = "interactive";
      push.autoSetupRemote = true;
    };
  };

  programs.lazygit.enable = true;
}
