FROM ansibleapp/ansibleapp-base
MAINTAINER Ansible Playbook Bundle Community

LABEL "com.redhat.ansibleapp.version"="0.1.0"
LABEL "com.redhat.ansibleapp.spec"=\
"aWQ6IDliNzBlNmJmLTI2ZjgtNGMxZi1hNTdmLTA3NTAxMzg4YzFlOApuYW1lOiBhbnNpYmxlYXBw\
L3dvcmRwcmVzcy1oYS1hbnNpYmxlYXBwCmRlc2NyaXB0aW9uOiBoaWdoIGF2YWlsYWJpbGl0eSB3\
b3JkcHJlc3MgZGVwbG95bWVudApiaW5kYWJsZTogdHJ1ZQphc3luYzogIm9wdGlvbmFsIgpwYXJh\
bWV0ZXJzOgogIC0gbmFtZTogcHJvamVjdF9uYW1lCiAgICBkZXNjcmlwdGlvbjogTmFtZXNwYWNl\
IHRvIGRlcGxveSBjb250YWluZXJzIHRvCiAgICBkZWZhdWx0OiB3b3JkcHJlc3MtaGEK"
ADD roles /opt/ansible/roles
ADD ansibleapp /opt/ansibleapp

RUN chown -R ansibleapp: /opt/{ansible,ansibleapp}
USER ansibleapp
