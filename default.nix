 { pkgs ? import <nixpkgs> {} }:

 pkgs.stdenv.mkDerivation {
   name = "django-queryset-csv";
   version = "0.2.10";
   src = pkgs.fetchurl {
     url = "https://github.com/azavea/django-queryset-csv/archive/0.2.10.tar.gz";
     md5 = "42f39925cb23341d74b46195d3ef1416";
   };
   buildInputs = [
     pkgs.python
     pkgs.python27Packages.django_1_6
     pkgs.python27Packages.sqlite3
   ];
 }
