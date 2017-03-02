pipeline {
    agent { docker 'maven:3.3.9' }
    stages {
        stage('build') {
            steps {
                sh 'pwd'
                sh 'ls -la'
                sh 'mvn clean package'
            }
        }
    }
}
