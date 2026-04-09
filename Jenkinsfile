pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo "Building project..."
            }
        }

        stage('Check Directories') {
            steps {
                script {
                    def nginxExists = fileExists('nginx')
                    def pythonExists = fileExists('python')

                    if (nginxExists && pythonExists) {
                        echo "SUCCESS: nginx and python directories exist ✅"
                    } else {
                        error "FAILED: nginx or python directory missing ❌"
                    }
                }
            }
        }

        stage('SonarQube Analysis') {
            steps {
                echo "Running SonarQube..."
            }
        }
    }
}
