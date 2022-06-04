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
    - basictools
    - buildtools
    - motd
  'apache*':
    - apache2
    - php.php-fpm
  'mariadb*':
    - mariadb
  'mail*':
    - mailserver
  'nextcloud*':
    - apache2
    - php.php-fpm
