{ lib, pkgs, ... }: {
  home.pointerCursor = {
    package = pkgs.callPackage ../../pkgs/apple_cursor { };

    name = "macOS-Monterey";
    size = 24;

    x11.enable = true;
    gtk.enable = true;
  };

  gtk = {
    enable = true;

    iconTheme = {
      package = pkgs.breeze-icons;
      name = "Breeze";
    };

    theme = {
      package = pkgs.breeze-gtk;
      name = "Breeze-Dark";
    };
  };

  qt = {
    enable = lib.mkDefault true;
    platformTheme = "gtk";
  };
}
