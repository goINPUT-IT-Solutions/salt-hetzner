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

install_fail2ban:
    pkg.installed:
        - pkgs:
            - fail2ban

{% set file = '/etc/fail2ban/jail.local' %}

{{ file }}:
  file.managed:
    - source: salt://fail2ban/files/jail.local
    - mode: 664
    
fail2ban:
  service.running:
    - reload: True
    - watch:
      - file: {{ file }}

