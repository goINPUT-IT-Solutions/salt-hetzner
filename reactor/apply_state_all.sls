highstate_run_all:
  local.state.apply:
    - tgt: '*'