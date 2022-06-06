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
    - zsh
    - users
    - ssh
    - fail2ban
  'apache*':
    - apache2
    - php.php-fpm
    - mariadb.mariadb-client
  'mariadb*':
    - mariadb.mariadb-server
    - mariadb.mariadb-client
  'mail*':
    - mailcow
    - mariadb.mariadb-client
    - docker.docker
    - docker.docker-compose
  'nextcloud*':
    - apache2
    - php.php-fpm
    - mariadb.mariadb-client
  'salt*': # Things for the master
    - gpg.generate-private-key.sls