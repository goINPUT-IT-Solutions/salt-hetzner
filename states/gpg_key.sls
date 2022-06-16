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

/root/.gnupg:
  file.directory:
    - user: root
    - group: root
    - mode: 0700
    - makedirs: True

/srv/salt/public-key:
  file.directory:
    - user: root
    - group: root
    - mode: 0755
    - makedirs: True

/srv/salt/public-key/key.gpg:
  file.managed:
    - source: salt://key.gpg
    - user: root
    - group: root
    - mode: 0644

gpg.import_key:
  module.run:
    - gpg.import_key:
      - filename: /srv/salt/public-key/key.gpg
