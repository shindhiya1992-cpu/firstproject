stage('Build & Deploy') {
    steps {
        // 1. Build the WAR file
        bat 'docker run --rm -v "%WORKSPACE%":/app -w /app maven:3.9-eclipse-temurin-17-alpine mvn clean package'
        
        // 2. Build the Tomcat Image using your new Dockerfile
        bat 'docker build -t my-tomcat-app .'
        
        // 3. Run the container
        bat 'docker run -d -p 8081:8080 --name my-app my-tomcat-app'
    }
}

}
