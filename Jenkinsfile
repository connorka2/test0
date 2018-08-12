pipeline {
<<<<<<< HEAD
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'echo "Hello World"'
                sh '''
                    ./ssl.sh google.com"
                    ls -lah
                '''
            }
        }
    }
}
=======
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
>>>>>>> a8d2f68de27a583e042d3bfdaaeedc2d65239a29
