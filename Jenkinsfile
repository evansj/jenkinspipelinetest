pipeline {
    agent any
    tools {
        maven 'maven-latest' 
    }
    stages {
        stage('build') {
            steps {
                sh 'mvn clean package'
            }
        }
    }
}

