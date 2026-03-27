pipeline {
    agent {
        docker {
            image 'node:20-alpine'
            // Using /v to map workspace and -w to set working directory
            args '-v %WORKSPACE%:/app -w /app'
        }
    }
    stages {
        stage('Install Dependencies') {
            steps {
                // Inside the Linux container, we use 'sh'
                sh 'npm install'
            }
        }
        stage('Build') {
            steps {
                sh 'npm run build'
            }
        }
    }
}

