#!jinja|yaml|gpg
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

{% for user, args in pillar.get('users', {}).items() %}

{{user}}:
  user.present:
    - fullname: {{args['fullname']}}
    - shell: {{args['shell']}}
    - home: {{args['home']}}
    - password: {{args['password']}}
    {% if args['sudo'] == true %}
    - groups:
      - staff
      - adm
      - sudo
    {% endif %}

{{args['ssh_auth_key']}}:
  ssh_auth.present:
    - user: {{user}}
    - enc: {{args['ssh_enc']}}
    - comment: {{args['ssh_comment']}}

{% endfor %}

#javik:
#  user.present:
#    - fullname: Benjamin Schneider
#    - shell: /bin/zsh
#    - home: /home/javik
#    - groups:
#      - staff
#      - adm
#      - sudo
#    - password: $5$MY8Rt5Fl4.YAf9$D3amXPmPpeJVDtb/ac8zVd7y7xbZ4R6umLQWshDCmh0
#
#AAAAC3NzaC1lZDI1NTE5AAAAIFe4eGJe8Ez/zOPGpS/yGOsToPQjY3ZAmw6rWjcel2NN:
#  ssh_auth.present:
#    - user: javik
#    - enc: ssh-ed25519
#    - comment: Javik OpenSSH Key for Stargazer
    