node {
    stage('Checkout') {
        checkout scm
    }

    def jenkinsImage
    stage('Build image') {
        jenkinsImage = docker.build('dimasmith/jenkins-docker', './docker')
    }

    stage('Publish image') {
        withDockerRegistry([credentialsId: 'dimasmith-docker']) {
            jenkinsImage.push('latest')
        }
    }
}