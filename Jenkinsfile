pipeline {
    agent any 
    stages {
        stage('Install Dependencies') {
            agent {
                docker {
                    image 'node:20-alpine'
                    // This handles the mounting and workspace mapping automatically
                    reuseNode true 
                }
            }
            steps {
                // Now you just run the command normally
                sh 'npm install' 
            }
        }
    }
}
