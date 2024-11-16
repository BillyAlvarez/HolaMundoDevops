pipeline {
    agent any

    tools {
        maven 'Maven 3.9' // Configurado en Jenkins
        jdk 'JDK 11'      // Configurado en Jenkins
    }

    stages {
        stage('Checkout') {
            steps {
                echo 'Clonando el repositorio...'
                git 'https://github.com/tu-usuario/tu-repo.git'
            }
        }
        stage('Build') {
            steps {
                echo 'Compilando la aplicación con Maven...'
                sh 'mvn clean package'
            }
        }
        stage('Test') {
            steps {
                echo 'Ejecutando pruebas unitarias...'
                sh 'mvn test'
            }
        }
        stage('Docker Build') {
            steps {
                echo 'Construyendo la imagen Docker...'
                sh 'docker build -t java-app:latest .'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Desplegando el contenedor Docker...'
                sh 'docker run -d -p 8080:8080 java-app:latest'
            }
        }
    }
}
