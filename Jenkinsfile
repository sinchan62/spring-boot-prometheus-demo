pipeline {
    agent {
        label 'slave1'
    }
    stages{
        stage('Fetch the code'){
            steps {
                echo 'code is fetched '
            }
        }
        stage('Dockerising the Spring app '){
            steps {
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
