pipeline {
    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID') 
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }
    agent any
    stages {
        stage('checkout') {
            steps {
                script{
                       
                          git 'https://github.com/gitjwala/Intigratewithjenkins.git'

                }
            }
        }
        stage('plan') {
            steps {
             
                 bat 'terraform init'
                 bat 'terraform plan'
                
                }
            }
        stage('Apply') {
            steps {
                 bat 'terraform apply --auto-approve'
                }
            }
    }
}
