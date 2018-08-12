pipeline {
  agent {
    node {
      label 'Node_agent'
    }

  }
  stages {
    stage('Stage1') {
      agent {
        node {
          label 'Node_agent'
        }

      }
      steps {
        echo 'Starting the stage'
        sh '''echo $(date)
bash ssl.sh google.com'''
        sh '''echo $(date)
bash ssl.sh index.hu
'''
        echo 'End of the stage1'
      }
    }
  }
}