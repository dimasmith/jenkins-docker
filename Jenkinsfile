node {
    stage('Checkout') {
        checkout scm
    }

    stage('Build image') {
        def jenkinsImage = docker.build 'dimasmith/jenkins:latest', dir: 'docker'
    }
}