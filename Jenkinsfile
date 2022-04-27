pipeline {
  agent any
    stages {
        stage('Runs only on feature branch commints') {
        when { branch pattern: "feature-.*", comparator: "REGEXP"}
        steps {
            sh "echo Lint Check Going On feature branch"
            sh "env"
            sh "whoami"
           }
        }
        stage('Doing a Dry-Run, when PR ') {
        steps
           {
             sh "env"
            // sh "ansible-playbook robocheck.yml -e ansible_user=centos -e role_name=frontend -e ansible_password=DevOps321 -e ENV=sandbox -e CHECK_MODE=true"
               echo "Doing a dry Run, just to save time"
            }
        }
        stage('When changes in main branch') {
        when { branch 'main' }
         steps {
              sh "env"
              sh "echo TEST COMMIT"
              sh "echo $BRANCH_NAME"
           }
        }
    }
}