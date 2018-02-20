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
                sh 'sudo git clone https://github.com/balu-balaji/terraform.git'
            }
        }
        
        stage('terraform init') {
            steps {
                sh 'sudo /home/ec2-user/terra/terraform init ./terraform'
            }
        }
        stage('terraform plan') {
            steps {
                sh 'ls ./jenkins; sudo /home/ec2-user/terra/terraform plan ./terraform'
            }
        }
        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }

        
    }
}
