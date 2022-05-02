{
  packageOverrides = pkgs: with pkgs; {
    myCloud = pkgs.buildEnv {
      name = "myCloud";
      paths = [
        # Cloud providers CLI
        awscli2
        google-cloud-sdk

        # IaaC
        terraform

        # Kubernetes
        kubectl
        kustomize
        helm
      ];
    };
  };
}
