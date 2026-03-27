pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                // 'sh' is for Linux/EC2. '%WORKSPACE%' is the Linux variable.
                bat 'docker run --rm -v "%WORKSPACE%":/app -w /app node:20-alpine npm install'
                bat 'docker run --rm -v "%WORKSPACE%":/app -w /app node:20-alpine npm run build'
            }
        }
    }
}

