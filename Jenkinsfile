pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'echo "Hello World"'
                sh '''
                    ssl.sh google.com
                    ls -lah
                '''
            }
        }
    }
}
