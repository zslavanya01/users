// @Library('todoapp') _

// todoapp (
//     COMPONENT          : 'users',
//     PROJECT_NAME       :  "Todoapp",
//     SLAVE_LABEL        :  "java",
//     SKIP_NEXUS_UPLOAD  :  false,
//     APP_TYPE           :  "NODEJS"
// )

pipeline {
    agent any

    stages {

        stage('prepare artifacts') {
            steps {
                sh '''
                  zip -r ../users.zip *
                '''
            }
        }

        stage('Upload Artifacts') {
            steps {
                sh '''
                  curl -f -v -u admin:admin123 --upload-file /var/lib/jenkins/workspace/CI-Pipelines/users.zip http://172.31.1.61:8081/repository/users/users.zip
                '''
            }
        }
    }
}