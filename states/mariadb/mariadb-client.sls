install_mariadb_client:
    pkg.installed:
    - pkgs:
      - mariadb-client

/etc/mysql/my.cnf:
  file.managed:
    - source: salt://mariadb/files/my.cnf
    - mode: 664
    