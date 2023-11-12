{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.diesel-cli
    pkgs.postgresql
    pkgs.mysql
    pkgs.sqlite
  ];

  shellHook = ''
    export DATABASE_URL="postgres://<user>:<password>@localhost/<database>"
    # Set additional environment variables if necessary
  '';
}
