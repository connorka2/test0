pipeline {
  agent {
    node {
      label 'master'
    }

  }
  stages {
    stage('Stage1') {
      agent {
        node {
          label 'master'
        }

      }
      steps {
        echo 'Starting the stage'
        sh '''echo $(date)
ssl.sh google.com'''
        sh '''echo $(date)
ssl.sh index.hu
'''
        echo 'End of the stage1'
      }
    }
  }
}