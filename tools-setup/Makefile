infra:
	git pull
	terraform init
	terraform apply -auto-approve

ansible:
	git pull
	ansible-playbook -i ${tool_name}-int.omshiva.online, -e ansible_user=azuser -e ansible_password=Dev@12345678 tool_setup.yml -e tool_name=${tool_name}

