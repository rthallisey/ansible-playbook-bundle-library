#!/bin/bash
APB_ACTION=$1
shift
playbooks=/opt/apb/actions

oc-login.sh

if [[ "$APB_ACTION" == "provision" ]]; then
  ansible-playbook $playbooks/provision.yaml $@
elif [[ "$APB_ACTION" == "deprovision" ]]; then
  ansible-playbook $playbooks/deprovision.yaml $@
elif [[ "$APB_ACTION" == "bind" ]]; then
  ansible-playbook $playbooks/bind.yaml $@
elif [[ "$APB_ACTION" == "unbind" ]]; then
  echo "UNBIND NOT IMPLEMENTED" # TODO
fi
