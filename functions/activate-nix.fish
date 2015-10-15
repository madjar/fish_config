function activate-nix
	set -gx PATH $HOME/.nix-profile/bin $PATH
        set -gx NIX_PATH "nixpkgs=$HOME/.nix-defexpr/channels/nixpkgs"
        set -gx SSL_CERT_FILE /etc/ssl/certs/ca-certificates.crt
end
