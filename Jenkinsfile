pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    // Build a Docker image with tag 'my-app:latest' from the current directory
                    def customImage = docker.build("my-app:latest")
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    // Run a container from the built image, execute 'echo Hello World'
                    docker.image('my-app:latest').inside {
                        sh 'echo Hello from inside the container!'
                    }
                }
            }
        }
    }
}
