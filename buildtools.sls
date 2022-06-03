install_buildtools:
    pkg.installed:
    - pkgs:
      - build-essential
      - cmake
      - pkg-config
      - autogen
      - automake
      - autoconf