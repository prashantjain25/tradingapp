pipeline {
    agent any
    triggers {
        pollSCM '* * * * *'
    }
    environment {
        CLIENT_SECRET = credentials('client-secret')
        CLIENT_ID = credentials('client-id')
    }

    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Test') {
             steps {
                sh 'gradle test'
             }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t your-docker-repo/your-app:latest .'
                }
            }
        }
        stage('Deploy Local Environment') {
            steps {
                sh 'terraform apply -var client_secret=$CLIENT_SECRET -var client_id=$CLIENT_ID -var environment=local'
            }
        }

        stage('Deploy Dev Environment') {
            steps {
                sh 'terraform apply -var client_secret=$CLIENT_SECRET -var client_id=$CLIENT_ID -var environment=dev'
            }
        }


    }
}