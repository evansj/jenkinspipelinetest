node('testslave') {
    checkout scm
    stage('Build') {
        docker.image('maven:3.3.9').inside {
            sh 'mvn clean package'
        }
    }
}
