pipeline{
    agent any
    stages {
        stage("Enable my script folder to be executable") {
            steps {
               sh 'chmod 775 ./script/*'
            }
        }
        stage(' Prepare environment') {
            steps{
                sh 'echo "installing docker locally"'
                sh './script/docker.sh'
                sh 'echo "installing kubernetes locally"'
                sh './script/kubernetes.sh'
                sh 'echo "rebuilding images and pushing to docker hub"'
                sh './script/robust.sh'
            }
        }    
        stage(' Testing Enviornment') {
            steps{
                sh 'echo "testing back end"'
                sh './script/backtest.sh'
            }
        }
        stage('depoly application through kubernetes') {
            steps{
                sh 'echo "deploying application"'
                sh './script/deploy.sh'   
            }
        }
    }
}