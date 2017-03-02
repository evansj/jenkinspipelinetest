#!groovy
pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'mvn -U clean package'
                archiveArtifacts artifacts: '**/target/*.jar', fingerprint: true
            }
        }
    }
}
