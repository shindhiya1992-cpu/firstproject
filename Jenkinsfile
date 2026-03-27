pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                // Manually run container as a batch command
                bat 'docker run --rm -v "%WORKSPACE%":/app -w /app node:20-alpine npm install'
                bat 'docker run --rm -v "%WORKSPACE%":/app -w /app node:20-alpine npm run build'
            }
        }
    }
}


