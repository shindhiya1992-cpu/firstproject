pipeline {
    agent any // Required to run on the Windows host first
    stages {
        stage('Build inside Docker') {
            steps {
                script {
                    // Manual call to bypass the plugin's automatic path conversion bug
                    docker.image('node:20-alpine').inside("-v %WORKSPACE%:/app -w /app") {
                        sh 'npm install'
                        sh 'npm run build'
                    }
                }
            }
        }
    }
}


