pipeline {
    agent { docker 'maven:3.3.9' }
    stages {
        stage('build') {
            steps {
                sh 'pwd'
                sh 'id'
                sh 'touch testfile'
                sh 'ls -la'
                sh 'which mvn'
                sh 'mvn -X clean package'
            }
        }
    }
}
