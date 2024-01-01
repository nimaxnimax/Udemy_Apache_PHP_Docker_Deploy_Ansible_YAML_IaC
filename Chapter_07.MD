Ansible Configuration Lab - Test and Verification


On Ansible Host (Ubuntu 22.04)

```bash
cat hosts
```

```bash
sudo vi hosts
```

```bash
cat /etc/hosts
```

```bash
cat update_etc_hosts.sh
```

```bash
sudo bash update_etc_hosts.sh
```

```bash
cat /etc/hosts
```

```bash
cat ansible_hosts.ini
```

```bash
sudo vi ansible_hosts.ini
```

```bash
cat ansible_hosts.ini
```

```bash
cat ansible_ssh_config_hosts.sh
```

```bash
ssh-keygen
```

```bash
ssh-copy-id adrian@ubuntu1
```

```bash
ssh-copy-id adrian@ubuntu2
```

```bash
ssh adrian@ubuntu1
```

```bash
ssh adrian@ubuntu2
```

```bash
cat ansible_ping_check.sh
```

```bash
ansible -i ansible_hosts.ini -m ping all
```

```bash
cat ansible_test_create_file.sh
```

```bash
ansible-playbook -i ansible_hosts.ini ansible_test_create_file.yml
```

