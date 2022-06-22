{
  packageOverrides = pkgs: with pkgs; {
    myBootstrap = pkgs.buildEnv {
      name = "myBootstrap";
      paths = [
        chezmoi
        gopass
      ];
    };

    myCloud = pkgs.buildEnv {
      name = "myCloud";
      paths = [
        # Cloud providers CLI
        awscli2
        google-cloud-sdk

        # IaaC
        terraform
      ];
    };

    myNode = pkgs.buildEnv {
      name = "myNode";
      paths = [
        nodejs
      ];
    };

    myKube = pkgs.buildEnv {
      name = "myKube";
      paths = [
        kubectl
        kustomize
        kubernetes-helm
      ];
    };
  };
}
