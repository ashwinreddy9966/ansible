pipeline {
  agent any
    stages {
       stage('Runs only on feature branch commits') {
        when { branch pattern: "feature-.*", comparator: "REGEXP"}
        steps {
            sh "Ansible Lint Checks"
           }
        }
        stage('When changes in main branch') {
         when { branch 'main' }
         steps {
                 sh "env"
                 sh "echo testing the tags"
           }
        }
        stage('When Tag ') {
        when { expression { env.TAG_NAME != null  } }
        steps
           {
            sh "env"
            
            }
        }
    }
}