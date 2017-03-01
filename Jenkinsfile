node('testslave') {
    checkout scm
    stage('Build') {
        sh 'env'
        sh 'id'
        sh 'pwd'
        sh 'ls -la /home'
        sh 'ls -la /home/jenkins'
        docker.image('maven:3.3.9').inside {
            sh 'pwd'
            sh 'mount'
            sh 'mvn clean package'
        }
    }
}
