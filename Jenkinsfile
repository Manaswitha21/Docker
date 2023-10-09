pipeline {
    agent any

    environment {
        DOCKERHUB_USERNAME = 'manaswitha2'
        DOCKERHUB_PASSWORD = 'D@123manu'
        IMAGE_NAME = 'manaswitha2/dockerrepo'
        IMAGE_TAG = 'latest'
        dockerImage ="${IMAGE_NAME}:${IMAGE_TAG}"
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
                    

                    // Build the Docker image
                    sh "docker build -t ${dockerImage} ."
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    
                

                    // Log in to Docker Hub using the credentials
                    
    sh "docker login -u ${DOCKERHUB_USERNAME} -p ${DOCKERHUB_PASSWORD}"
}





                    // Push the Docker image to Docker Hub
                    sh "docker push ${dockerImage}"
                }
            }
        }
    }    






   
