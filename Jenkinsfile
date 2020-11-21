pipeline {
  agent any
  environment{
      DOCKER_USER=credentials('DOCKER_USER')
      DOCKER_PASSWORD=credentials('DOCKER_PASSWORD')
      TESTVM_IP=credentials('TESTVM_IP')
  }
  stages {
      stage('get repo') {
        steps {
            sh 'chmod a+x ./scripts/get-repo.sh'
            sh './scripts/get-repo.sh'
        }
      }
    stage('docker login') {
        steps {
          sh 'sudo docker login --username=${DOCKER_USER} --password=${DOCKER_PASSWORD}'
        }
      }
    stage('docker build and push frontend') {
        steps {
          sh 'chmod a+x ./scripts/docker-push-frontend.sh'
          sh './scripts/docker-push-frontend.sh'
        }
      }
     stage('docker build and push backend') {
        steps {
          sh 'chmod a+x ./scripts/docker-push-backend.sh'
          sh './scripts/docker-push-backend.sh'
        }
      }
     stage('run tests') {
        steps {
            sh 'chmod a+x ./scripts/tests.sh'
            sh './scripts/tests.sh'
        }
      }
   }
}
