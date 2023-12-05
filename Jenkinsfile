pipeline {
    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID') 
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }
    agent any
    tools {
        terraform 'Terraform'
    }    
    stages {
        stage('gitcheckout') {
            steps {
                script{
                       
                          git 'https://github.com/gitjwala/Intigratewithjenkins.git'

                }
            }
        }
        stage('Terraform Plan') {
            steps {
             
                 bat 'terraform init'
                  bat 'terraform plan'
                
                }
            }
        stage('Terraform Apply') {
            steps {
                 bat 'terraform apply --auto-approve'
                }
            }
    }
}
