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

#{% for key,data in pillar.get('users', {}) %}
#    {{ key }}:
#        user.present:
#            - fullname: {{ data['fullname'] }}
#            - shell: {{ data['shell'] }}
#            - home: {{ data['home'] }}
#            - fullname: {{ data['fullname'] }}
#            - groups:
#                {% for groups in data['groups'] %}
#                    - {{ groups }}
#                {% endfor %}
#            - password: {{ data['password'] }}
#
#        {{ data['ssh_auth_key']['public_key'] }}:
#            ssh_auth.present:
#                - user: {{ key }}
#                - enc:  {{ data['ssh_auth_key']['enc'] }}
#                - comment:  {{ data['ssh_auth_key']['comment'] }}
#{% endfor %}

{% for key, data in salt['pillar.get']('users').items() %}
{{ key }}:
  user.present:
    - fullname: {{ data['fullname'] }}
    - shell: {{ data['shell'] }}
    - home: {{ data['home'] }}
    - fullname: {{ data['fullname'] }}
#    - groups:
#        {% for groups in data['groups'] %}
#        - {{ groups }}
#        {% endfor %}
    - password: {{ data['password'] }}

{{ data['ssh_auth_key']['public_key'] }}:
    ssh_auth.present:
    user: {{ key }}
    - enc:  {{ data['ssh_auth_key']['enc'] }}
    comment:  {{ data['ssh_auth_key']['comment'] }}
{% endfor %}