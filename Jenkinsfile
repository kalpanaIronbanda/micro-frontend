pipeline {
  agent any
  stages {
    stage('Push to ECR') {
      steps {
        script{
          sh """
          aws ecr get-login-password --region ap-southeast-1 | docker login --username AWS --password-stdin 778168509800.dkr.ecr.ap-southeast-1.amazonaws.com
          docker build -t frontend .
          docker tag frontend:latest 778168509800.dkr.ecr.ap-southeast-1.amazonaws.com/frontend:latest
          docker push 778168509800.dkr.ecr.ap-southeast-1.amazonaws.com/frontend:latest
          """
        }

      }
    }
  }
}
