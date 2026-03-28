stage('Build & Deploy') {
    steps {
        // 1. Build the WAR file using Maven
        bat "docker run --rm -v %WORKSPACE%:/app -w /app maven:3.9-eclipse-temurin-17-alpine mvn clean package"
        
        // 2. Run in Tomcat (Replace 'firstproject-1.0.0.war' with your actual name)
        bat "docker run -d --name addressbook-app -p 8081:8080 -v %WORKSPACE%\\target\\firstproject-1.0.0.war:/usr/local/tomcat/webapps/addressbook.war tomcat:9.0-jdk17-corretto"
    }
}
