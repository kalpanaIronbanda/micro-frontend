pipeline {
  agent any
  stages {
    stage('Push to ECR') {
      steps {
        script{
          sh """
          aws ecr get-login-password --region ap-southeast-1 | sudo docker login --username AWS --password-stdin 778168509800.dkr.ecr.ap-southeast-1.amazonaws.com
          sudo docker build -t 778168509800.dkr.ecr.ap-southeast-1.amazonaws.com/frontend:latest .
          sudo docker push 778168509800.dkr.ecr.ap-southeast-1.amazonaws.com/frontend:latest
          """
        }

      }
    }
  }
}
