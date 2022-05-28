https://github.com/mailcow/mailcow-dockerized:
  git.latest:
    - target: /opt/mailcow
    - branch: master

user.present:
    - name: mailcow
    - shell: /bin/sh
    - home: /opt/mailcow
