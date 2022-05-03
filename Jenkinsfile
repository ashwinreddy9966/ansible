pipeline {
  agent any
  environment {
      GIT = credentials('GitHub-Cred')
    }
    stages {
       stage('Ansible Style Check on feature branch only') {
        when { branch pattern: "feature-.*", comparator: "REGEXP"}
        steps {
            sh "Ansible Lint Checks or Style Checks"
           }
        }
        stage('Doing Dry-Run when a PR is placed') {
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
          git branch: 'main', url: "https://${GIT_USR}:${GIT_PSW}@github.com/ashwinreddy9966/ansible"
           sh '''
            ls -ltr
            TAG=$(cat VERSIONS.md |head -1 |sed s/#//g)
           # TAG=$(bash -x get-tag.sh)
            git tag $TAG
            git push --tags
            echo "tag pushed $TAG"
            '''
                  }
               }
            }
        }
      post {
          // Clean after build
          always {
              cleanWs()
          }
      }
    }
