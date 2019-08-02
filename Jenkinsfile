pipeline{
    agent any
   

     tools {
        maven 'mymaven' 
    }
    stages{
        stage('checkout'){
            steps{
                withCredentials([string(credentialsId: 'sugit', variable: 'git1')]) {
                checkout([$class: 'GitSCM',
                branches: [[name: 'origin/Dev']],
                extensions: [[$class: 'WipeWorkspace']],
                userRemoteConfigs: [[url: "${git1}"]]
                ])
                }
            }
        }
      stage ('build and test'){
            steps{
                
                    sh "mvn clean install"
                
            }
        }
         stage('Sonar') 
       {environment {
           scannerHome=tool 'sonar scanner'
       }
            steps {
                
                sh "mvn sonar:sonar -Dsonar.host.url=http://18.224.155.110:9000"
            }
        }
        stage ('Uploading artifact to nexus'){
            steps{
 withCredentials([usernamePassword(credentialsId: 'sudipa_nexus', passwordVariable: 'pass', usernameVariable: 'usr')]) {
sh label: '', script: "curl -u $usr:$pass --upload-file target/Project1.war http://18.224.155.110:8081/nexus/content/repositories/devopstraining/sudipa/Project1.war"
}
            
        }
        }
        stage('Deploy'){
    steps {
            sh "cd /home/ubuntu/sudipa && ansible-playbook -i inventory sudipa.yml"
        }
    }
    }
    post {
    success {
      slackSend (color: '#00FF00', message: "SUCCESSFUL: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' (${env.BUILD_URL})")
    }
    failure {
      slackSend (color: '#FF0000', message: "FAILED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' (${env.BUILD_URL})")
    }
  }
}
