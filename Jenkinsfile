node {
    stage('Checkout') {
        checkout scm
    }

    stage('Build image') {
        def jenkinsImage = docker.build('jenkins-docker:latest', './docker')
    }
}