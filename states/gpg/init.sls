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

/etc/salt/gpgkeys:
  file.directory:
    - user: root
    - group: root
    - dir_mode: 750
    - file_mode: 640


generate_private_key:
    module.run:
        - gpg.create_key:
            - key_type: RSA
            - key_length: 4096
            - name_real: Saltmaster
            - gnupghome: /etc/salt/gpgkeys