node('docker') {  // 'docker' is the label for the node that has Docker installed
    def app

    stage('Clone repository') {
        checkout scm
    } 

    stage('Build image') {
        // Build Docker image with tag 'edureka1/edureka'
        app = docker.build('edureka1/edureka')
    }

    stage('Test image') {
        // Run a simple test inside container
        app.inside {
            sh 'echo "Test passed"'
        }
    }

    stage('Push image') {
        // Login and push to Docker Hub
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            app.push("${env.BUILD_NUMBER}")  // Push with build number tag
            app.push("latest")                // Push latest tag
        }
    }
}

