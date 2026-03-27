pipeline {
    agent any
    stages {
        stage('Install Dependencies') {
            agent {
                docker {
                    image 'node:20-alpine'
                    // This is the key fix for Windows Jenkins
                    args '-v %WORKSPACE%:/app -w /app'
                    reuseNode true
                }
            }
            steps {
                // Use 'sh' because the node:alpine container is Linux
                sh 'npm install'
            }
        }
    }
}
