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
    - mariadb.mariadb-client
  'mariadb*':
    - mariadb.mariadb-server
    - mariadb.mariadb-client
  'mail*':
    - mailserver
    - mariadb.mariadb-client
  'nextcloud*':
    - apache2
    - php.php-fpm
    - mariadb.mariadb-client
