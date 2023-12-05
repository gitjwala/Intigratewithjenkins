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
                       dir('terrafrom')
                       {
                          git 'https://github.com/gitjwala/Intigratewithjenkins.git'
                       }
                }
            }
        }
        stage('plan') {
            steps {
             
                 bat 'terrafrom init'
                 bat 'terrafrom plan'
                
                }
            }
        stage('Apply') {
            steps {
                 bat 'terrafrom apply --auto-approve'
                }
            }
    }
}
