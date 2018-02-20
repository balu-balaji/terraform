pipeline {
    agent {
        node {
            label 'master'
        }
    }

    stages {

        stage('terraform started') {
            steps {
                sh 'echo "Started...!" '
            }
        }
        stage('git clone') {
            steps {
                sh 'sudo git clone https://github.com/balu-balaji/terraform.git /mywork/terraform/'
            }
        }
        
        stage('terraform init') {
            steps {
                sh 'terraform init /mywork/terraform/'
            }
        }
        stage('terraform plan') {
            steps {
                sh 'terraform plan /mywork/terraform/'
            }
        }
        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }

        
    }
}
