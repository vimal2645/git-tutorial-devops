node {
    def app 

    stage('Clone repository') {
        checkout scm
    } 

    stage('Build image') {
        app = docker.build('edureka1/edureka')
    }

    stage('Test image') {
        // Ideally, we would run a test framework against our image.

        app.inside { 
             sh'echo "test passed"'   
    }
}

   stage ('pushimage') {

           docker.withregistry ('http://registry.hub.docker.com, 'docker-hub.credentials')  {

                    app.push("$(env.BUILD_NUMBER)")
                    app.push("latest)
                }
       }
}
