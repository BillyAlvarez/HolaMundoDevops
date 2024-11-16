pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                bat 'mvn clean package'
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
