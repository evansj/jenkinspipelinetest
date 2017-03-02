#!groovy
node('master') {
    majorVer = '1.0'
    version = "${majorVer}.${env.BUILD_ID}"

    stage("checkout") {
        checkout scm
    }

    stage('Build') {
        sh "mvn versions:set -DgenerateBackupPoms=false -DnewVersion=${version}"
        sh 'mvn -U clean package'
        junit '**/target/surefire-reports/*.xml'
        archiveArtifacts artifacts: '**/target/*.jar', fingerprint: true
        stash includes: '**/target/*.jar', name: 'app'
    }

    stage('Build Docker Container') {
        sh "ls -la . build target docker"
        unstash 'app'
        sh "ls -la . build target docker"
        sh "./build/docker.sh ${version}"
    }
}
