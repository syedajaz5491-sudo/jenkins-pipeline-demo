pipeline {
    agent any
    stages {
        stage('Setup Directories') {
            steps {
                sh 'mkdir -p nginx python'
                echo "SUCCESS: nginx and python directories are present"
            }
        }
    }
}
