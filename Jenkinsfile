ipeline {
    agent any 
    stages {
        stage('Install Dependencies') {
            steps {
                // Since you are on Windows, we use 'bat'
                bat "docker run --rm -v %WORKSPACE%:/app -w /app node:20-alpine npm install"
            }
        }
    }
}
