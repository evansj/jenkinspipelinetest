/* Requires the Docker Pipeline plugin */
node('docker') {
    checkout scm
    stage('Build') {
        docker.image('maven:3.3.9').inside {
            sh 'mvn clean package'
        }
    }
}
