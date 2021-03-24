pipeline{
        agent any
        stages{
            stage('Clone Trio Task'){
                steps{
                    sh "git clone https://github.com/HShanks19/DockerPracticeTrioTask || true"
                }
            }
            stage("Install Docker & Docker Compose"){
                steps{
                    sh "curl https://get.docker.com | sudo bash"
                    sh "sudo usermod -aG docker jenkins"
                    sh "sudo curl -L https://github.com/docker/compose/releases/download/1.27.4/docker-compose-\$(uname -s)-\$(uname -m) -o /usr/local/bin/docker-compose"
                    sh "sudo chmod +x /usr/local/bin/docker-compose"
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
