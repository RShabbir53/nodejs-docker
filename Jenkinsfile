pipeline {
  agent any
  stages {
    stage('checkout code') {
      steps {
        git(url: 'https://github.com/RShabbir53/nodejs-docker', branch: 'main')
      }
    }

    stage('log') {
      steps {
        sh 'ls -la'
      }
    }

    stage('build') {
      steps {
        sh 'sudo docker build -t rshabbir53/nodeserver:1.0 .'
      }
    }

    stage('log in to docker hub') {
      environment {
        DOCKERHUB_USERNAME = 'rshabbir53'
        DOCKERHUB_PASSWORD = '!babji2009@'
      }
      steps {
        sh 'sudo docker login -u $DOCKERHUB_USERNAME -p $DOCKERHUB_PASSWORD'
      }
    }

    stage('push to docker hub') {
      steps {
        sh 'sudo docker push rshabbir53/nodeserver:1.0'
      }
    }

  }
}