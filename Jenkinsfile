pipeline {
    agent any

    stages {
        stage("Greeting") {
            steps {
                sh 'echo "Hello guys 👋"'
            }
        }
        stage{
            steps("checkout to repo"){
                sh 'git clone https://github.com/NipurJain4/e-commerce.git'
            }
        }

        stage("Docker Build") {
            steps {
                    sh 'docker build -t mini-mart .'
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
