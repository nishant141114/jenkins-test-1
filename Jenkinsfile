pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID = credentials('aws-access-key-id')
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout the code from the GitHub repository
                git branch: 'main', url: 'https://github.com/nishant141114/jenkins-test-1.git'
            }
        }
        stage('Terraform Init') {
            steps {
                // Initialize Terraform
                sh 'terraform init'
            }
        }
        stage('Terraform Apply') {
            steps {
                // Apply the Terraform configuration
                sh 'terraform apply -auto-approve'
            }
        }
    }
    post {
        always {
            // Clean up workspace
            cleanWs()
        }
    }
}