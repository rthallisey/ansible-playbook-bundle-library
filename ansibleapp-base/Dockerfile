FROM centos:7
MAINTAINER Ansible Playbook Bundle Community

RUN yum -y install epel-release centos-release-openshift-origin \
 && yum -y update \
 && yum -y install origin origin-clients net-tools bind-utils ansible \
 && yum clean all

RUN echo "localhost ansible_connection=local" >> /etc/ansible/hosts
RUN sed -i 's|#roles_path.*$|roles_path = /opt/ansible/roles|' /etc/ansible/ansible.cfg

RUN mkdir /opt/ansibleapp /etc/asb

COPY oc-login.sh entrypoint.sh broker-bind-creds bind-init /usr/bin/

RUN useradd -u 1001 -r -g 0 -M -b /opt/ansibleapp -s /sbin/nologin -c "ansibleapp user" ansibleapp

RUN chown -R ansibleapp: /etc/asb \
    && chmod 750 /etc/asb

ENTRYPOINT ["entrypoint.sh"]
