Ansible playbook to setup new machine/user.

# root
```
ansible-playbook -e '{user: undg}' create_user.yaml
su undg
```

# user
```
cd ~
ansible-playbook -k install_dependencies.yaml
```
