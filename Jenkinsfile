pipeline {
    agent { docker 'jenkins_slave' }
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
