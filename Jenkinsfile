pipeline {
    agent { docker 'maven:3.3.9' }
    stages {
        stage('build') {
            steps {
                sh 'pwd'
                sh 'id'
                sh 'touch testfile'
                sh 'ls -laR'
                sh 'which mvn'
                sh 'mvn -X clean package'
            }
        }
    }
}
