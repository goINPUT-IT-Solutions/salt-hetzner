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

{% set public_key = '/root/public_gpg.key.gpg' %}

{{ public_key }}:
    file.managed:
        - source: /etc/salt/gpgkeys/exported_pubkey.gpg
        - user: root
        - group: root
        - mode: 0644

import_public_key:
    cmd.run:
        - name: gpg --import {{ public_key }}
        - unless: gpg --list-keys | grep -i 'saltmaster@goinput.de'
        - require:
            - file: {{ public_key }}
