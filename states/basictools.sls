######################################################
#               _____ _   _ _____  _    _ _______    #
#              |_   _| \ | |  __ \| |  | |__   __|   #
#     __ _  ___  | | |  \| | |__) | |  | |  | |      #
#    / _` |/ _ \ | | | . ` |  ___/| |  | |  | |      #
#   | (_| | (_) || |_| |\  | |    | |__| |  | |      #
#    \__, |\___/_____|_| \_|_|     \____/   |_|      #
#     __/ |                                          #
#    |___/                                           #
#                                                    #
######################################################

install_basic_packages:
  pkg.installed:
    - pkgs:
      - htop
      - screen
      - zip
      - unzip
      - git
      - whois
      - needrestart
      - python3
      - python3-pip

/root/.gnupg:
  file.directory:
    - user: root
    - group: root
    - dir_mode: 755
    - file_mode: 644

install_python_gnupgp:
  pip.installed:
    - pkgs:
      - python-gnupg


