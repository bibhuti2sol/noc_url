pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                // Checkout your code from your version control system, and build your Docker image
                sh 'docker build -t my-url .'
            }
        }
        
        stage('Deploy') {
            steps {
                // Deploy the Docker image to a Docker container
                sh 'docker pull my-image'
                sh 'docker run -d -p 80:80 my-url'
            }
        }
    }
}
