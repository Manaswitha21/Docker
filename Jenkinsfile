pipeline {
    agent any

    environment {
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

                    // Log in to Docker Hub using the credentials
                     
    sh "docker login -u $DOCKERHUB_USERNAME -p $DOCKERHUB_PASSWORD"





                    // Push the Docker image to Docker Hub
                    sh "docker push ${dockerImage}"
                }
            }
        }
    }    
}





   
