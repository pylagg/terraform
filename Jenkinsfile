pipeline {
  agent any
  stages {
   stage("Set terraform path") {
    steps {
    
       def tfHome = tool name: 'Terraform'
       env.PATH = "${tfHome};${env.PATH}"
     
     bat 'terraform -version'
    }
  }
 
  stage("Provision infrastructure") {
  steps {
    bat 'terraform init'
    bat 'terraform plan'
    bat 'terraform apply'
  }
  }
 }
}
