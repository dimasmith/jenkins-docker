node {
    stage('Checkout') {
        scm checkout
    }

    stage('Build image') {
        def jenkinsImage = docker.build 'dimasmith/jenkins:latest', dir: 'docker'
    }
}