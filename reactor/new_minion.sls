{# server failed to authenticate -- remove accepted key #}
{% if not data['result'] and data['id'].endswith('.goitservers.com') %}
minion_remove:
  wheel.key.delete:
    - args:
      - match: {{ data['id'] }}
{% endif %}

{% if 'act' in data and data['act'] == 'pend' and data['id'].endswith('.goitservers.com') %}
accept_new_minion:
  wheel.key.accept:
    - args:
      - match: {{ data['id'] }}
{% endif %}
