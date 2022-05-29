{# test server is sending new key -- accept this key #}
{% if 'act' in data and data['act'] == 'pend' and data['id'].endswith('.goitservers.com') %}
minion_add:
    wheel.key.accept:
        - match: {{ data['id'] }}
{% endif %}