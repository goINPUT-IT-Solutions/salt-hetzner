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
    - dir_mode: 0700
    - file_mode: 0600


generate_private_key:
    cmd.run:
        - name: gpg --batch --generate-key --pinentry-mode=loopback --passphrase="" --homedir /etc/salt/gpgkeys /srv/salt/states/gpg/unattended-gpg-key
        - creates: /etc/salt/gpgkeys/exported_private.key

save_private_key:
    cmd.run:
        - name: gpg --homedir /etc/salt/gpgkeys --export-secret-keys --armor > /etc/salt/gpgkeys/exported_private.key
        - creates: /etc/salt/gpgkeys/exported_private.key

save_public_key:
    cmd.run:
        - name: gpg --homedir /etc/salt/gpgkeys --armor --export > /etc/salt/gpgkeys/exported_pubkey.gpg
        - creates: /etc/salt/gpgkeys/exported_pubkey.gpg
        