nano setup-devops.sh
sudo apt update -y
sudo apt install nano -y
nano setup-devops.sh
chmod +x setup-devops.sh && ./setup-devops.sh
sudo systemctl status jenkins
sudo apt update -y
sudo apt install openjdk-17-jdk -y
dpkg -l | grep jenkins
sudo rm -f /etc/apt/sources.list.d/jenkins.list
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list
sudo apt update
sudo rm -f /usr/share/keyrings/jenkins-keyring.asc
sudo curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list
sudo apt update
sudo rm -f /etc/apt/sources.list.d/jenkins.list
sudo rm -f /usr/share/keyrings/jenkins-keyring.asc
sudo su
rm  setup-devops.sh
nano setup-devops.sh
chmod +x setup-devops.sh
./setup-devops.sh
chmod +x setup-devops.sh
./setup-devops.sh
# Remove old/broken repo (if exists)
sudo rm -f /etc/apt/sources.list.d/jenkins.list
# Install required tools
sudo apt update
sudo apt install ca-certificates curl gnupg -y
# Add Jenkins GPG key (correct way)
sudo mkdir -p /usr/share/keyrings
curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
# Add Jenkins repository (correct format)
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
# Update and install
sudo apt update
sudo apt install jenkins -y
rm setup-devops.sh
nano install-jenkins.sh
chmod +x install-jenkins.sh
./install-jenkins.sh
rm  install-sonarqube.sh
rm install-sonarqube.sh
rm  setup-devops.sh
ls
rm install-jenkins.sh 
nano install-jenkins.sh
chmod +x install-jenkins.sh
./install-jenkins.sh
sudo rm -f /etc/apt/sources.list.d/jenkins.list
sudo rm -f /usr/share/keyrings/jenkins*
sudo apt clean
sudo rm -rf /var/lib/apt/lists/*
sudo apt update
sudo apt install curl gnupg ca-certificates -y
curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | sudo gpg --dearmor -o /usr/share/keyrings/jenkins.gpg
echo "deb [signed-by=/usr/share/keyrings/jenkins.gpg] https://pkg.jenkins.io/debian binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update
grep -r "jenkins" /etc/apt/
sudo rm -f /etc/apt/sources.list.d/jenkins.list
sudo rm -f /usr/share/keyrings/jenkins.gpg
sudo apt clean
sudo rm -rf /var/lib/apt/lists/*
sudo apt update
curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | gpg --dearmor | sudo tee /usr/share/keyrings/jenkins.gpg > /dev/null
echo "deb [signed-by=/usr/share/keyrings/jenkins.gpg] https://pkg.jenkins.io/debian binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list
sudo apt update
sudo rm -f /etc/apt/sources.list.d/jenkins.list
sudo rm -f /usr/share/keyrings/jenkins.gpg
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee /usr/share/keyrings/jenkins.gpg > /dev/null
echo "deb [signed-by=/usr/share/keyrings/jenkins.gpg] https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list
sudo apt clean
sudo rm -rf /var/lib/apt/lists/*
sudo apt update
sudo rm -f /etc/apt/sources.list.d/jenkins.list
sudo rm -f /usr/share/keyrings/jenkins.gpg
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo gpg --dearmor -o /usr/share/keyrings/jenkins.gpg
echo "deb [signed-by=/usr/share/keyrings/jenkins.gpg] https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list
sudo apt clean
sudo rm -rf /var/lib/apt/lists/*
sudo apt update
sudo rm -f /etc/apt/sources.list.d/jenkins.list
sudo rm -f /usr/share/keyrings/jenkins.gpg
sudo apt clean
sudo rm -rf /var/lib/apt/lists/*
curl -fsSL https://pkg.jenkins.io/debian/jenkins.io.key | gpg --dearmor > jenkins.gpg
sudo mv jenkins.gpg /usr/share/keyrings/jenkins.gpg
echo "deb [signed-by=/usr/share/keyrings/jenkins.gpg] https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list
sudo apt update
sudo apt-get -o Acquire::AllowInsecureRepositories=true -o Acquire::AllowDowngradeToInsecureRepositories=true update
sudo apt-get install jenkins -o Dpkg::Options::="--force-confnew" -y
ls
rm install-jenkins.sh 
ls
vim install-jenkins.sh
chmod +x install-jenkins.sh
./install-jenkins.sh
ls
rm install-jenkins.sh 
ls
#!/bin/bash
# =============================================
# Jenkins install script for Ubuntu 22.04/23.04
# Latest version, bypass GPG errors safely
# =============================================
# Update system
sudo apt update && sudo apt upgrade -y
# Install Java (Jenkins requirement)
sudo apt install -y openjdk-11-jdk curl gnupg2 software-properties-common
# Add Jenkins repo (trusted=yes avoids GPG issues)
echo "deb [trusted=yes] https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list
# Update package list
sudo apt update
# Install Jenkins
sudo apt install -y jenkins
# Start and enable Jenkins service
sudo systemctl start jenkins
sudo systemctl enable jenkins
# Open firewall port 8080
sudo ufw allow 8080/tcp
sudo ufw reload
# Display Jenkins initial admin password
echo "=========================================="
echo "Jenkins installed. Access at http://<YOUR_VM_IP>:8080"
echo "Initial admin password:"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
echo "=========================================="
sudo apt install -y ufw
sudo ufw allow 8080/tcp
sudo ufw reload
sudo ufw status
sudo systemctl status jenkins
sudo netstat -tulnp | grep 8080
allow-jenkins-8080
allow-sonarqube
sudo netstat -tulnp | grep 8080
#!/bin/bash
# Exit on any error
set -e
echo "Starting SonarQube installation..."
# 1️⃣ Update packages
sudo apt update
sudo apt install -y openjdk-17-jdk unzip curl wget
# 2️⃣ Create SonarQube user
sudo useradd -r -s /bin/false sonarqube || echo "User already exists"
# 3️⃣ Download SonarQube latest LTS
SONAR_VERSION="10.7.3.60935"   # replace with latest LTS if needed
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-${SONAR_VERSION}.zip -O sonarqube.zip
#!/bin/bash
# Exit on any error
set -e
echo "Starting SonarQube installation..."
# 1️⃣ Update packages
sudo apt update
sudo apt install -y openjdk-17-jdk unzip curl wget
# 2️⃣ Create SonarQube user
sudo useradd -r -s /bin/false sonarqube || echo "User already exists"
# 3️⃣ Download SonarQube latest LTS
SONAR_VERSION="10.7.3.60935"   # replace with latest LTS if needed
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-${SONAR_VERSION}.zip -O sonarqube.zip
vim install-sonarqube.sh
chmod +x install-sonarqube.sh
sudo ./install-sonarqube.sh
ls
cd sonarqube.zip 
rm sonarqube.zip 
vim sonarqube.zip
chmod +x install-sonarqube.sh
sudo bash install-sonarqube.sh
vim sonarqube.zip 
cat sonarqube.zip 
cat >> sonarqube.zip 
vim sonarqube.zip 
unzip sonarqube.zip path/to/file.txt -d tempdir
ls
rm sonarqube.zip 
vim sonarqube.sh
chmod +x install-sonarqube.sh
sudo bash install-sonarqube.sh
vim sonarqube.sh 
cat install-sonarqube.sh | grep SONAR_VERSION
rm sonarqube.sh
ls
rm sonarqube.zip 
vim sonarqube.sh
chmod +x install-sonarqube.sh
sudo bash install-sonarqube.sh
vim sonarqube.sh 
find ~ -name "*sonarqube*.sh"
rm -f *sonarqube*.sh
find ~ -name "*sonarqube*.sh"
vim sonarqube.sh
ls
rm -f sonarqube.zip
ls
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-10.11.0.60935.zip
curl -L -o sonarqube.zip -H "User-Agent: Mozilla/5.0" https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-10.11.0.60935.zip
ls -lh sonarqube.zip
rm -f sonarqube.zip
curl -L -o sonarqube.zip -H "User-Agent: Mozilla/5.0" https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-10.11.0.60935.zip
ls -lh sonarqube.zip
wget https://github.com/SonarSource/sonarqube/releases/download/10.11.0.60935/sonarqube-10.11.0.60935.zip -O sonarqube.zip
ls
rm -f sonarqube.zip 
ls
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.9.6.92038.zip -O sonarqube.zip
ls -lh sonarqube.zip
sudo unzip sonarqube.zip -d /opt/
sudo mv /opt/sonarqube-9.9.6.92038 /opt/sonarqube
sudo chown -R sonarqube:sonarqube /opt/sonarqube
sudo systemctl daemon-reload
sudo systemctl start sonarqube
sudo systemctl enable sonarqube
sudo bash -c 'cat <<EOF > /etc/systemd/system/sonarqube.service
[Unit]
Description=SonarQube service
After=network.target

[Service]
Type=forking
ExecStart=/opt/sonarqube/bin/linux-x86-64/sonar.sh start
ExecStop=/opt/sonarqube/bin/linux-x86-64/sonar.sh stop
User=sonarqube
Group=sonarqube
Restart=always
LimitNOFILE=65536
LimitNPROC=4096

[Install]
WantedBy=multi-user.target
EOF'
sudo systemctl daemon-reload
sudo systemctl start sonarqube
sudo systemctl enable sonarqube
sudo systemctl status sonarqube
systemctl status jenkins
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
sudo systemctl stop jenkins
sudo vi /var/lib/jenkins/config.xml
sudo systemctl start jenkins
mkdir jenkins-pipeline-demo
cd jenkins-pipeline-demo
mkdir nginx python
ls
vi Jenkinsfile
git init
git add .
git commit -m "Initial commit with directories and Jenkinsfile"
git branch -M main
git remote add origin https://github.com/syedajaz5491-sudo/jenkins-pipeline-demo.git
git push -u origin main
git init
git add .
git commit -m "Initial commit with directories and Jenkinsfile"
git branch -M main
git remote add origin https://github.com/syedajaz5491-sudo/jenkins-pipeline-demo.git
git push -u origin main
# Configure Git identity
git config --global user.name "Syed Ajaz"
git config --global user.email "syedajaz5491@gmail.com"
# Go to your project folder
cd ~/jenkins-pipeline-demo
# Initialize Git
git init
# Add all files
git add .
# Commit
git commit -m "Initial commit with directories and Jenkinsfile"
# Rename branch to main
git branch -M main
# Add remote
git remote add origin https://github.com/syedajaz5491-sudo/jenkins-pipeline-demo.git
# Push to GitHub
git push -u origin main
echo "test" > test.txt
git add test.txt
git commit -m "Test GitHub trigger"
git push origin main
cd ..
echo "test" > test.txt
git add test.txt
git commit -m "Test GitHub trigger"
git push origin main
echo "test" > test.txt
git add test.txt
git commit -m "Test GitHub trigger"
git push origin main
echo "trigger test" >> test.txt
git add test.txt
git commit -m "Test GitHub webhook trigger"
git push origin main
echo "trigger webhook test" >> test_webhook.txt
git add test_webhook.txt
git commit -m "Test GitHub webhook trigger"
git push origin main
echo "trigger webhook test" >> test_webhook.txt
git add test_webhook.txt
git commit -m "Test GitHub webhook trigger"
git push origin main
curl -I http://34.123.45.67:8080/github-webhook/
sudo systemctl status jenkins
sudo netstat -tulpn | grep 8080
TCP port 8080 from 0.0.0.0/0
curl -I http://34.123.45.67:8080/github-webhook/
sudo systemctl status jenkins
curl ifconfig.me
echo "webhook test" >> test_webhook.txt
git add test_webhook.txt
git commit -m "Trigger webhook test"
git push origin main
cd ~/jenkins-pipeline-demo
cat > Jenkinsfile << 'EOF'
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
EOF

git add Jenkinsfile
git commit -m "Add Jenkinsfile for GitHub-triggered pipeline"
git push origin main
systemctl status jenkins
systemctl status sonarqube
systemctl status github
cd ~/jenkins-pipeline-demo
cat > Jenkinsfile << 'EOF'
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
EOF

git pull origin main --rebase
git add Jenkinsfile
git commit -m "Add Jenkinsfile"
git pull origin main --rebase
echo "trigger build" >> trigger.txt
git add trigger.txt
git commit -m "Trigger Jenkins build"
git push origin main
git add .
git commit -m "test webhook"
git push origin main
git rm --cached -r jenkins-pipeline-demo
rm -rf jenkins-pipeline-demo/.git
git add .
git commit -m "fixed nested repo issue"
git push origin main
git pull origin main --rebase
git push origin main
echo "trigger build" >> test.txt
git add .
git commit -m "trigger jenkins build"
git push origin main
rm -f .git/index.lock
jobs
kill %1
git add .
git commit -m "trigger jenkins build"
git push origin main
