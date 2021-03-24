pipeline{
        agent any
        environment {
                DOCKER_PASSWORD = credentials("DOCKER_PASSWORD")
        }
        stages{
            stage('Clone Trio Task'){
                steps{
                    sh "git clone https://github.com/HShanks19/DockerPracticeTrioTask || true"
                }
            }
            stage("Install Docker & Docker Compose"){
                steps{
                    sh "bash docker-install.sh"
                }
            }
            stage('Build'){
                steps{
                    sh "docker-compose build --parallel"
                }
            }
            stage('Push'){
                steps{
                    sh "docker-compose push"
                }
            }
            stage('Deploy'){
                steps{
                    sh "docker-compose up -d"
                }
            }
        }
}
