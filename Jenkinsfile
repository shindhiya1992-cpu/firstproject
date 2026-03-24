pipeline {
    agent any
    tools {
        maven "mymaven" // Ensure this matches your Tool name in Jenkins
    }
    stages {
        stage('Compile') {
            steps {
                echo 'Compiling...'
                bat 'mvn compile'
            }
        }
        stage('UnitTest') {
            steps {
                echo 'Testing...'
                bat 'mvn test'
            }
        }
        stage('Package') {
            steps {
                echo 'Packaging...'
                // -DskipTests avoids running tests again to save time
                bat 'mvn package -DskipTests' 
            }
        }
    }
}
