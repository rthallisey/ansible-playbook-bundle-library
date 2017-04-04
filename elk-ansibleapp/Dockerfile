# TODO: Need to regenerate this file using ansibleapp tooling
# and add spec to be encoded and stamped as label
FROM ansibleapp/ansibleapp-base
MAINTAINER Ansible Playbook Bundle Community

ADD ansible /opt/ansible
ADD ansibleapp/actions /opt/ansibleapp/actions

RUN chown -R ansibleapp: /opt/{ansible,ansibleapp}
USER ansibleapp
