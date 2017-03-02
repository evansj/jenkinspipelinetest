#!groovy
pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'pwd'
                sh 'id'
                sh 'touch testfile'
                sh 'ls -laR'
                sh 'which mvn'
                sh 'mvn -X clean package'
                archiveArtifacts artifacts: '**/target/*.jar', fingerprint: true
            }
        }
    }
}
