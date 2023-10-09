pipeline {
    agent any

    environment {
        DOCKER_USERNAME = 'manaswitha2'
        DOCKER_PASSWORD = 'D@123manu'
        DOCKERHUB_CREDENTIALS = credentials('DOCKERHUB_CREDENTIALS')
        IMAGE_NAME = 'manaswitha2/dockerrepo'
        IMAGE_TAG = 'latest'
        GITHUB_CREDENTIALS = credentials('GITHUB_CREDENTIALS')
    }
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], doGenerateSubmoduleConfigurations: false, extensions: [[$class: 'CloneOption', credentialsId: 'GITHUB_CREDENTIALS']], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/Manaswitha21/Docker.git']]])
   
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
                    withCredentials([usernamePassword(credentialsId: DOCKERHUB_CREDENTIALS, usernameVariable: 'manaswitha2', passwordVariable: 'D@123manu')]) {
                        sh "docker login -u ${DOCKER_USERNAME} -p ${DOCKER_PASSWORD}"
                    }

                    // Push the Docker image to Docker Hub
                    sh "docker push ${dockerImage}"
                }
            }
        }
    }





   
