Apache PHP Redis Deployment using Docker and Ansible IaC Automation - Testing on 3 More Cloud VMs


On Ansible Host (Ubuntu 22.04)
- Add Other Ubuntu Host IPs to /etc/hosts and ansible_hosts.ini file
- ssh-copy-id to the new Ubuntu Hosts and test ssh
- ansible -i ansible_hosts.ini -m ping all
- Change ansible_docker_deploy.yml file to play for the new Ubuntu Hosts only and play it
- Change ansible_docker_stateless_container_apache_php_redis.yml file to play for the new Ubuntu Hosts only and play it
- Verify new Ubuntu Host URL/IP addresses - if working or not!

