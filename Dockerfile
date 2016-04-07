FROM williamyeh/ansible:ubuntu14.04-onbuild

# ==> Specify requirements filename;  default = "requirements.yml"
#ENV REQUIREMENTS  requirements.yml

# ==> Specify playbook filename;      default = "playbook.yml"
ENV PLAYBOOK      apache.yml

# ==> Specify inventory filename;     default = "/etc/ansible/hosts"
#ENV INVENTORY     inventory.ini

EXPOSE 80

# ==> Executing Ansible (with a simple wrapper)...
RUN ansible-playbook-wrapper

CMD [ "/usr/sbin/apache2ctl", "-D", "FOREGROUND" ]
