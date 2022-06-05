install_mariadb_server:
    pkg.installed:
    - pkgs:
      - mariadb-server

{% set file_server_conf = '/etc/mysql/mariadb.conf.d/50-server.cnf' %}

{{ file_server_conf }}:
  file.managed:
    - source: salt://mariadb/files/mariadb.conf.d/50-server.cnf
    - mode: 664
    
mysql:
  service.running:
    - reload: True
    - watch:
      - file: {{ file_server_conf }}