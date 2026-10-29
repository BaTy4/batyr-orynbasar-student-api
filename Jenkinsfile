pipeline {
    agent any

    environment {
        IMAGE_NAME = 'batyr-orynbasar-student-api'
        IMAGE_TAG = 'v1.0-batyr'
    }

    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out Student API source code'
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo 'Building Spring Boot application'
                sh 'chmod +x gradlew'
                sh './gradlew clean bootJar --no-daemon'
            }
        }

        stage('Test') {
            steps {
                echo 'Running automated tests'
                sh './gradlew test --no-daemon'
            }
        }

        stage('Docker Build') {
            steps {
                echo 'Building Docker image'
                sh 'docker build -t ${IMAGE_NAME}:${IMAGE_TAG} .'
            }
        }

        stage('Verify') {
            steps {
                echo 'Verifying Docker image'
                sh 'docker image inspect ${IMAGE_NAME}:${IMAGE_TAG}'
            }
        }
    }

    post {
        success {
            echo 'SUCCESS: Student API pipeline completed!'
        }
        failure {
            echo 'FAILURE: Check the Jenkins console output.'
        }
        always {
            echo 'Pipeline execution finished.'
        }
    }
}
