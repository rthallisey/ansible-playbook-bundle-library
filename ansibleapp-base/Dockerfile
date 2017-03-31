FROM centos:7
MAINTAINER Ansible Playbook Bundle Mantainers

RUN yum -y install epel-release centos-release-openshift-origin \
 && yum -y update \
 && yum -y install origin origin-clients net-tools bind-utils ansible \
 && yum clean all

RUN echo "localhost ansible_connection=local" >> /etc/ansible/hosts
RUN sed -i 's|#roles_path.*$|roles_path = /opt/ansible/roles|' /etc/ansible/ansible.cfg

RUN mkdir /opt/ansibleapp

COPY oc-login.sh entrypoint.sh /usr/bin/

ENTRYPOINT ["entrypoint.sh"]
