pipeline {
    environment {
        DOCKERHUB_CREDENTIALS = credentials("dhubb")
    }
    agent {
        label 'app1'
    }

    stages {
        stage('Git') {
            steps {
                git url:'https://github.com/pra5anth/Online-Learning-Platform-Deployment-using-DevOps-Pipeline', branch:'main'
            }
        }
    stage('Docker') {
            steps {
                sh 'sudo docker login -u ${DOCKERHUB_CREDENTIALS_USR} -p ${DOCKERHUB_CREDENTIALS_PSW}'
                sh 'sudo docker build /home/ubuntu/jenkins/workspace/online/ -t pra5anth/online'
                sh 'sudo docker push pra5anth/online'
            }
        }
    stage('Deploy') {
           steps {
                sh 'sudo docker pull pra5anth/online:latest'
                sh 'sudo docker run -d -p 81:80 pra5anth/online:latest'
           }
        }
    }
}
