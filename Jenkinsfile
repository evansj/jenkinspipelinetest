node('testslave') {
    checkout scm
    stage('Build') {
        sh 'env'
        docker.image('maven:3.3.9').inside {
            sh 'mvn clean package'
        }
    }
}
