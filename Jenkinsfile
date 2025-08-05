pipeline {
    agent any

    stages {
        stage("Greeting") {
            steps {
                sh 'echo "Hello guys 👋"'
            }
        }

        stage("Checkout Repo") {
            steps {
                sh 'cd e-commerce'
            }
        }

        stage("Docker Build") {
            steps {
                dir('e-commerce') {
                    sh 'docker build -t mini-mart .'
                }
            }
        }

        stage("Test") {
            steps {
                echo 'Running tests...'
            }
        }

        stage("Run Container") {
            steps {
                sh 'docker run -d -p 3600:80 mini-mart'
            }
        }
    }
}
