pipeline {
    agent any
    stages {
        stage('Setup Directories') {
            steps {
                script {
                    sh 'mkdir -p nginx python'
                    echo "✅ nginx and python directories are present!"
                }
            }
        }
    }
}
