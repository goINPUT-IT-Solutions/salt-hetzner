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

base:
  '*':
    - states.basictools
    - states.buildtools
    - states.motd
  'apache*':
    - states.apache2
  'mariadb*':
    - states.mariadb
  'mail*':
    - states.mailserver
  'nextcloud*':
    - states.apache2
    - states.php.php-fpm
