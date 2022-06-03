/etc/motd:
    file.managed:
        - source: salt://files/etc/motd
        - user: root
        - group: root
        - mode: 644
#        - attrs: ai
#        - template: jinja
#        - defaults:
#            custom_var: "default value"
#            other_var: 123