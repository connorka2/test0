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
        echo 'Checking out'
      }
    }
    stage('Deploy') {
      agent {
        node {
          label 'master'
        }

      }
      steps {
        sh 'ssl.sh google.com'
      }
    }
  }
}