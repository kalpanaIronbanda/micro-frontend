pipeline {
    agent any 
    stages {
        stage("build"){
            steps {
                script {
            sh """
            aws ecr get-login-password --region ap-southeast-2 | sudo docker login --username AWS --password-stdin 315073111691.dkr.ecr.ap-southeast-2.amazonaws.com
            docker build -t frontend .
            sudo docker tag frontend:latest 315073111691.dkr.ecr.ap-southeast-2.amazonaws.com/frontend:latest
            sudo docker push 315073111691.dkr.ecr.ap-southeast-2.amazonaws.com/frontend:latest

            """
          }
        }
    }
  }
}