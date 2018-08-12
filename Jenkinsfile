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
    stage('Build2') {
      parallel {
        stage('Test') {
          steps {
            echo 'Test stage'
          }
        }
        stage('Testing google.com') {
          steps {
            sh '''./ssl.sh google.com > ssl.log
chmod 777 ssl.log'''
            archiveArtifacts 'ssl.log'
          }
        }
      }
    }
    stage('Test') {
      agent any
      environment {
        CI = 'true'
      }
      steps {
        sh './test.sh'
      }
    }
  }

}
