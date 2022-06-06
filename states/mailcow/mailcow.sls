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

https://github.com/mailcow/mailcow-dockerized:
    git.latest:
        - target: /opt/mailcow
        - branch: master

mailcow_user:
    user.present:
        - name: mailcow
        - fullname: The mailserver suite with the 'moo'
        - shell: /bin/sh
        - home: /opt/mailcow
    
/opt/mailcow/mailcow.conf:
    file.managed:
        - source: salt://mailcow/files/mailcow.conf
        - template: jinja
        - user: mailcow
        - group: mailcow
        - mode: 0644

/opt/mailcow/docker-compose.yml:
    file.managed:
        - source: salt://mailcow/files/docker-compose.yml
        - template: jinja
        - user: mailcow
        - group: mailcow
        - mode: 0644


launch_mailcow:
    cmd.run:
        - name: /usr/local/bin/docker-compose up -d
        - cwd: /opt/mailcow
        - unless: /usr/local/bin/docker-compose ps | grep -i 'mailcow'
        - require:
            - file: /opt/mailcow/docker-compose.yml

restart_mailcow:
    cmd.run:
        - name: /usr/local/bin/docker-compose restart
        - cwd: /opt/mailcow
        - onchanges:
            - file: /opt/mailcow/mailcow.conf
        - require:
            - file: /opt/mailcow/docker-compose.yml

