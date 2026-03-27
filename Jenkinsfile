pipeline {
    agent any
    stages {
       agent {
    docker {
        image 'node:20-alpine'
        // This maps the current workspace to a simple /app folder inside the container
        args '-v %WORKSPACE%:/app -w /app'
    }
        }

            }
            steps {
                // Use 'sh' because the node:alpine container is Linux
                sh 'npm install'
            }
        }
    }
}
