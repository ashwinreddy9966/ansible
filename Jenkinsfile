pipeline {
  agent any
    stages {
        stage('Doing a Dry-Run') {
        steps
           {
             sh "env"
             sh "ansible-playbook robocheck.yml -e ansible_user=centos -e role_name=frontend -e ansible_password=DevOps321 -e ENV=sandbox -e CHECK_MODE=true"
            }
        }
    }
}