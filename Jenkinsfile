pipeline {
    agent any

    stages {

        stage ('prepare artifacts') {
            steps {
                sh '''
        
                  zip -r ../users.zip *
                '''

            }
        }

        stage ('upload artifacts') {
            steps {
                sh '''
                  curl -v -u admin:admin123 --upload-file frontend.zip http://172.31.13.117:8081/repository/users/users.zip
                '''
            }
        }
    }
}