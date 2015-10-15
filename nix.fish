if test -n "$HOME"
    set -x NIX_LINK "$HOME/.nix-profile"
     
    # Set the default profile.
    if not [ -L "$NIX_LINK" ]
        echo "creating $NIX_LINK" >&2
        set _NIX_DEF_LINK /nix/var/nix/profiles/default
        /nix/store/wc472nw0kyw0iwgl6352ii5czxd97js2-coreutils-8.23/bin/ln -s "$_NIX_DEF_LINK" "$NIX_LINK"
    end
     
    set PATH $NIX_LINK/bin $PATH
     
    # Subscribe the user to the Nixpkgs channel by default.
    if [ ! -e $HOME/.nix-channels ]
        echo "http://nixos.org/channels/nixpkgs-unstable nixpkgs" > $HOME/.nix-channels
    end
     
    # Append ~/.nix-defexpr/channels/nixpkgs to $NIX_PATH so that
    # <nixpkgs> paths work when the user has fetched the Nixpkgs
    # channel.
    set -x NIX_PATH nixpkgs=$HOME/.nix-defexpr/channels/nixpkgs

    set -x SSL_CERT_FILE /etc/ssl/certs/ca-certificates.crt
end 
