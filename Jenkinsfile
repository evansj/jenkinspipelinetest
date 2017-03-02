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
        sh "ls -la"
        unstash 'app'
        sh "ls -la"
        sh "ls -la build target"
        sh "./build/docker.sh ${version}"
    }

    stage('Promote to Dev') {
        input "Promote to Dev?"
    }

    stage('Deploy - Dev') {
        echo "Deploying to Dev"
        echo "run smoke tests etc..."
    }

    stage('Promote to QA') {
        input "Promote to QA?"
    }

    stage('Deploy - QA') {
        echo "Deploying to QA"
        echo "run smoke tests etc..."
    }

    stage('Promote to UAT') {
        input "Promote to UAT?"
    }

    stage('Deploy - UAT') {
        echo "Deploying to UAT"
        echo "run smoke tests etc..."
    }

    stage('Promote to Production') {
        input "Promote to Production?"
    }

    stage('Deploy - Production') {
        echo "Deploying to Production"
        echo "run smoke tests etc..."
    }
}
