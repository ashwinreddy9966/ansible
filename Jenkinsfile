pipeline {
  agent any
    stages {
       stage('Runs only on feature branch commits') {
        when { branch pattern: "feature-.*", comparator: "REGEXP"}
        steps {
            sh "Ansible Lint Checks"
           }
        }
        stage('Doing a Dry-Run, when PR ') {
        steps
           {
             sh "env"
            sh "ansible-playbook robocheck.yml -e ansible_user=centos -e role_name=frontend -e ansible_password=DevOps321 -e ENV=sandbox -e CHECK_MODE=true"
            }
        }
        stage('When changes in main branch') {
        when { branch 'main' }
         steps {
              sh "echo $BRANCH_NAME"
           }
        }
    }
}