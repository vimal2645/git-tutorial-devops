pipeline {
  agent any

  stages {
    stage('Build Docker Image') {
      steps {
        script {
          bat 'docker build -t my-app:latest .'
        }
      }
    }

    stage('Run Docker Container') {
      steps {
        script {
          bat '''
          docker run -d -w /app -v "%cd%:/app" my-app:latest
          '''
        }
      }
    }
  }
}
