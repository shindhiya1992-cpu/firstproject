pipeline {
    agent any

    stages {
        stage('Build & Deploy') {
            steps {
                // 1. Build the WAR file using Maven in Docker
                bat "docker run --rm -v %WORKSPACE%:/app -w /app maven:3.9-eclipse-temurin-17-alpine mvn clean package"
                
                // 2. Stop and remove old container if it exists (prevents naming conflicts)
                bat "docker rm -f addressbook-app || rem"

                // 3. Run in Tomcat
                // NOTE: Check if your war is named 'firstproject-1.0.0.war' or 'addressbook.war'
                bat "docker run -d --name addressbook-app -p 8081:8080 -v %WORKSPACE%\\target\\firstproject-1.0.0.war:/usr/local/tomcat/webapps/addressbook.war tomcat:9.0-jdk17-corretto"
            }
        }
    }
}
