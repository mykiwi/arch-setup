all: /usr/bin/ansible-playbook
	sudo ansible-playbook --extra-vars "user=$$USER" playbook.yml

/usr/bin/ansible-playbook:
	sudo pacman -S --noconfirm --needed ansible
	sudo sh -c 'echo "localhost ansible_connection=local" > /etc/ansible/hosts'
