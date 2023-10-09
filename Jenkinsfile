pipeline {
    agent any

    environment {
        DOCKER_USERNAME = 'Manaswitha2'
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
                    def DOCKERHUB_USERNAME = 'Manaswitha2'
                    def DOCKERHUB_PASSWORD = 'D@123manu'
                    def dockerImage = "${IMAGE_NAME}:${IMAGE_TAG}"

                 
}


                    // Push the Docker image to Docker Hub
                    sh "docker push ${dockerImage}"
                }
            }
        }
    }    
}





   
