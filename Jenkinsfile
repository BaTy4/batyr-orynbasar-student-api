```groovy
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

        stage('Build and Test') {
            steps {
                echo 'Building and testing with Java 21'
                sh '''
                    docker run --rm \
                      -v "$WORKSPACE:/app" \
                      -w /app \
                      gradle:9.8.2-jdk21 \
                      gradle clean test bootJar --no-daemon
                '''
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
```
