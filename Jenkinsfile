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
    stage('Test') {
      agent {
        node {
          label 'master'
        }

      }
      environment {
        CI = 'true'
      }
      steps {
        sh './jenkins/scripts/test.sh'
      }
    }
  }
}