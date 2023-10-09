pipeline {
    agent any

    environment {
        DOCKER_USERNAME = 'manaswitha2'
        DOCKER_PASSWORD = 'D@123manu'
        DOCKERHUB_CREDENTIALS = credentials('DOCKERHUB_CREDENTIALS')
        IMAGE_NAME = 'manaswitha2/dockerrepo'
        IMAGE_TAG = 'latest'
    }


    stages {
        stage('Checkout') {
            steps {
                checkout scm   
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    def dockerImage ="${IMAGE_NAME}:${IMAGE_TAG}"

                    // Build the Docker image
                    sh "docker build -t ${dockerImage} ."
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    def dockerImage = "${IMAGE_NAME}:${IMAGE_TAG}"

                    // Log in to Docker Hub using the credentials
                    withCredentials([usernamePassword(credentialsId: DOCKERHUB_CREDENTIALS, usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                        sh "docker login -u ${DOCKER_USERNAME} -p ${DOCKER_PASSWORD}"
                    }

                    // Push the Docker image to Docker Hub
                    sh "docker push ${dockerImage}"
                }
            }
        }
    }    
}





   
