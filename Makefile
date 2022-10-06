setup:
	ansible-playbook playbook.yml -i inventory.ini --skip-tags 'deploy, monitoring' --vault-password-file password 

deploy:
	ansible-playbook playbook.yml -i inventory.ini --vault-password-file password --tags deploy

monitoring:
	ansible-playbook playbook.yml -i inventory.ini --vault-password-file password --tags monitoring
