pipeline{
        agent any
        stages{
            stage('Clone Trio Task'){
                steps{
                    sh "git clone https://github.com/HShanks19/DockerPracticeTrioTask/ || true"
                }
            }
            stage("Install Docker & Docker Compose"){
                steps{
                    sh "bash docker-download.sh"
                }
            }
                
            stage('Deploy'){
                steps{
                    sh "cd ~/trio-task && docker-compose pull && docker-compose up -d"
                }
            }
        }
}
