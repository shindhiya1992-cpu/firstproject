pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                // 'sh' is for Linux/EC2. '${WORKSPACE}' is the Linux variable.
                sh 'docker run --rm -v "${WORKSPACE}":/app -w /app node:20-alpine npm install'
                sh 'docker run --rm -v "${WORKSPACE}":/app -w /app node:20-alpine npm run build'
            }
        }
    }
}

