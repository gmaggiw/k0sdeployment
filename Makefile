install-ansible:
	@echo "Install Ansible..."
	@sudo apt-get update
	@sudo apt-get install -y ansible

k0s:
	@echo "k0s deployment"
	@ansible-playbook ansible/roles/k0s/tasks/main.yaml

myapp:
	@echo "app deployment"
	@ansible-playbook ansible/roles/app/tasks/main.yaml

monitoring:
	@echo "Monitoring deployment"
	@ansible-playbook ansible/roles/monitoring/tasks/main.yaml

install: install-ansible k0s myapp monitoring
	@echo "Deployed"

.PHONY: install-ansible k0s myapp install
