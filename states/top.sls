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
    - users
    - gpg_key
    - cron
    - timezone
    - php.cli
    - php.composer
    - php.bz2
    - php.curl
    - php.gd
    - php.imagick
    - php.json
    - php.mbstring
    - php.mysql
    - php.readline
    - php.zip
  'files*':
    - postfix
  'mariadb*':
    - postfix
  'apache*':
    - apache
    - php.fpm
    - postfix
  'nextcloud*':
    - postfix
  'jitsi*':
    - postfix
  'wireguard*':
    - wireguard
    - postfix
  'bitwarden*':
    - postfix
  