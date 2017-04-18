node {
    stage('Checkout') {
        checkout scm
    }

    def jenkinsImage
    stage('Build image') {
        jenkinsImage = docker.build('jenkins-docker:latest', './docker')
    }

    stage('Publish image') {
        withDockerRegistry([credentialsId: 'dimasmith-docker']) {
            jenkinsImage.push()
        }
    }
}