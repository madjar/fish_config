source /etc/profile.d/*.fish

set -gx PATH ~/.local/bin ~/.cabal/bin $PATH
set -x SSH_ASKPASS /usr/lib/seahorse/seahorse-ssh-askpass
eval (envoy -pf)

set -gx PATH $HOME/.nix-profile/bin $PATH
set -gx NIX_PATH "nixpkgs=$HOME/.nix-defexpr/channels/nixpkgs"
set -gx SSL_CERT_FILE /etc/ssl/certs/ca-certificates.crt
