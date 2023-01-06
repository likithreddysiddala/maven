pipeline{
    agent any
       tools {
      maven 'M2_home'
    }
    environment {
      DOCKER_TAG = getVersion()
    }
    stages{
        stage("Git checkout"){
            steps{
                git 'https://github.com/likithreddysiddala/sample-project.git'
            }
        }
        stage("Maven build"){
            steps{
                sh "mvn clean install"
			
            }
        }
         stage("Docker Build"){
            steps{
                sh 'docker build . -t likithreddysiddala/app:${DOCKER_TAG} '
            }
        }
         stage("Push DockerHub"){
            steps{
                withCredentials([string(credentialsId: 'docker-hub', variable: 'DockerHubPwd')]) {
                sh 'docker login -u likithreddysiddala -p ${DockerHubPwd}'
                }
               
                sh 'docker push likithreddysiddala/app:${DOCKER_TAG} '
            }
        }
         stage('Docker Deploy'){
            steps{
              ansiblePlaybook credentialsId: '13.209.65.56', disableHostKeyChecking: true, extras: "-e DOCKER_TAG=${DOCKER_TAG}", installation: 'ansible', inventory: 'dev.inv', playbook: 'deploy-docker.yml'
            }
        }
    }
}
def getVersion(){
    def commitHash = sh label: '', returnStdout: true, script: 'git rev-parse --short HEAD'
    return commitHash
}
