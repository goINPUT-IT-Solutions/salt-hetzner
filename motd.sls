#- motd einheitlich fuer alle Hosts setzen #}
/etc/motd:
    file.managed:
        - source: salt://files/etc/motd
        - template: jinja
        - user: root
        - group: root
        - mode: 0644

#### alle anderen motd Meldungen deaktivieren
/etc/update-motd.d:
  file.directory:
    - clean: True
    - user: root
    - group: root
    - dir_mode: 0755
    - backup: minion

{%- else %}
## bei anderen OS kommt eine Fehlermeldung
always-fails:
  test.fail_without_changes:
    - name: "OS not supported!"
    - failhard: True
{%- endif %}
