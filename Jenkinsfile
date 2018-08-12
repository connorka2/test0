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
        echo 'Test stage'
        sh '''./ssl.sh google.com > ssl.log
chmod 777 ssl.log'''
        archiveArtifacts 'ssl.log'
      }
    }
  }
}