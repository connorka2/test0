pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'echo "Hello World"'
        sh 'pwd'
        sh 'ls -la'
        sh './ssl.sh index.hu'
      }
    }
    stage('Test') {
      steps {
        sh './ssl.sh google.com'
        echo 'Test stage'
      }
    }
  }
}