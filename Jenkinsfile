pipeline {
    agent any 
    stages {
        stage('Checkout') { 
            steps {
                Checkout scm
            }
        }
        stage('Build') { 
            steps {
                sh `mvn install`
            }
        }
   }
}
