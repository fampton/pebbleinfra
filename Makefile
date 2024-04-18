.PHONY: deploy redeploy

deploy:
	ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook pebble_ec2_deploy.yaml -e @vars.yaml --skip-tags redeploy

redeploy:
	ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook pebble_ec2_deploy.yaml -e @vars.yaml --tags "redeploy"

