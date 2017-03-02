#!groovy
pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh "mvn versions:set -DgenerateBackupPoms=false -DnewVersion=1.0.${env.BUILD_ID}"
                sh 'mvn -U clean package'
                archiveArtifacts artifacts: '**/target/*.jar', fingerprint: true
            }
        }
    }
}
