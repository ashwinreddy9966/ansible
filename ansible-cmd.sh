ansible-pull -U https://github.com/ashwinreddy9966/ansible roboshop-pull.yml -e ENV=dev -e APP_VERSION=1.0.5 -e COMPONENT=cart

ansible-pull -U https://github.com/ashwinreddy9966/ansible roboshop-pull.yml -e role_name=elk -e COMPONENT=cart

ansible-pull -U https://github.com/ashwinreddy9966/ansible roboshop-pull.yml -e COMPONENT=elk