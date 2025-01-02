{ callPackage
, libsForQt5
}:

let
  mkGui = args: callPackage (import ./gui.nix (args)) {
    inherit (libsForQt5) wrapQtAppsHook;
  };

  mkServer = args: callPackage (import ./server.nix (args)) { };
in
{
  guiStable = mkGui {
    channel = "stable";
    version = "2.2.52";
    hash = "sha256-/aa3y5c0yPu5GDmPkjN4qWXd2jQiv90hDqrXJTdND68=";
  };

  guiPreview = mkGui {
    channel = "stable";
    version = "2.2.52";
    hash = "sha256-/aa3y5c0yPu5GDmPkjN4qWXd2jQiv90hDqrXJTdND68=";
  };

  serverStable = mkServer {
    channel = "stable";
    version = "2.2.52";
    hash = "sha256-Kd7nTnXKX68Pwg+KwlwMEtQgkpsIgphylZ2D4jjrNgU=";
  };

  serverPreview = mkServer {
    channel = "stable";
    version = "2.2.52";
    hash = "sha256-Kd7nTnXKX68Pwg+KwlwMEtQgkpsIgphylZ2D4jjrNgU=";
  };
}

