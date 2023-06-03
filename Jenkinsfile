pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        script {
          // Define your Docker image name and tag
          def imageName = "reactjs-app"
          def imageTag = "reactjs-${BUILD_NUMBER}"

          // Build the Docker image
          sh "docker build -t ${imageName}:${imageTag} frontend"

        }
      }
    }

    stage('Push to ECR') {
      steps {
        script {
          // Log in to ECR
          sh "aws ecr get-login-password --region ap-southeast-1 | docker login --username AWS --password-stdin 778168509800.dkr.ecr.ap-southeast-1.amazonaws.com"

          // Define your Docker image name and tag
          def imageName = "reactjs-app"
          def imageTag = "reactjs-${BUILD_NUMBER}"


          // Tag the Docker image for ECR
          sh "docker tag ${imageName}:${imageTag} 778168509800.dkr.ecr.ap-southeast-1.amazonaws.com/monolithic:${imageTag}"

          // Push the Docker image to ECR
          sh "docker push 778168509800.dkr.ecr.ap-southeast-1.amazonaws.com/monolithic:${imageTag}"
        }
      }
    }
  }
}
