pipeline {
    agent {
        label 'slave1'
    }
    stages{
        stage('Fetch the code'){
            steps {
                git 'https://github.com/sinchan62/spring-boot-prometheus-demo.git'
            }
        }
        stage('Dockerising the Spring app '){
            steps {
                sh 'cd Spring-boot-prometheus-demo/'
                sh 'sudo docker build -t springapp1 .'
            }
            
        }
        stage {
            steps {
                 sh 'sudo docker run -itd -p 8080 --name=myapp springapp1'
            }
        }
    
    }
}
