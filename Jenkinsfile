pipeline {
    agent any
    tools {
        maven 'Maven 3.9.8'  // Asegúrate de que el nombre coincida con el que configuraste en Jenkins
    }
    stages {
        stage('Build') {
            steps {
                bat 'mvn clean package'  // Usamos 'bat' en Windows para ejecutar Maven
            }
        }
        stage('Test') {
            steps {
                bat 'mvn test'
            }
        }
        stage('Deploy') {
            steps {
                bat 'docker build -t myapp .'
                bat 'docker run -d -p 8080:8080 myapp'
            }
        }
    }
}
