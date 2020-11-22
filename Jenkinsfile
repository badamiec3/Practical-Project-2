pipeline {
  agent any
  environment{
      DOCKER_USER=credentials('DOCKER_USER')
      DOCKER_PASSWORD=credentials('DOCKER_PASSWORD')
      SECRET_KEY=credentials('SECRET_KEY')
      DATABASE_URI=('DATABASE_URI')
      TEST_DATABASE_URI=credentials('TEST_DATABASE_URI')
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
    stage('run tests') {
        steps {
            sh 'chmod a+x ./scripts/tests.sh'
            sh './scripts/tests.sh'
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
   }
}
