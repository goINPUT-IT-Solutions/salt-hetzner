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
    