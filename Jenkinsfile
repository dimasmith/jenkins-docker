node {
    stage('Checkout') {
        checkout scm
    }

    stage('Build image') {
        sh 'docker build --tag jenkins-docker:latest ./docker'
    }
}