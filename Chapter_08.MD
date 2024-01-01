Checking Netstat and Swap using Ansible + Swap Configuration


On Ansible Host (Ubuntu 22.04)

```bash
ansible-playbook -i ansible_hosts.ini ansible_check_netstat.yml
```

```bash
ansible-playbook -i ansible_hosts.ini ansible_check_swap.yml
```

```bash
ansible-playbook -i ansible_hosts.ini ansible_swap_config.yml
```

