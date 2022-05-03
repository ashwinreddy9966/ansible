pipeline {
  agent any
  environment {
      GIT_PWD = credentials('GitHub-Password')
    }
    stages {
       stage('Ansible Style Check on feature branch only') {
        when { branch pattern: "feature-.*", comparator: "REGEXP"}
        steps {
            sh "Ansible Lint Checks"
           }
        }
        stage('Run Dry-Run when a PR is in place') {
         when { branch pattern: "PR-.*", comparator: "REGEXP"}
         steps {
                 sh "env"
             //    sh "ansible-playbook robocheck.yml -e ansible_user=centos -e role_name=frontend -e ansible_password=DevOps321 -e ENV=sandbox -e CHECK_MODE=true"
                 sh "Testing the PR, with a dry-run"
           }
        }
        stage('Tag') {
        when { branch 'main' }
        steps {
           dir('CODE') {
          git branch: 'main', credentialsId: 'GitHub-Token', url: 'https://thecloudcareers@${GIT_PWD}:github.com/ashwinreddy9966/ansible.git'
           sh '''
            TAG=$(bash -x get-tag.sh)
            git tag $TAG
            git push --tags
            '''
                  }
               }
            }
        }
    }
