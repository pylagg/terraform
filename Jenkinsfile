pipeline {
  agent any
  tools {
    terraform 'Terraform'
  }
  stages {
   stage("Set terraform path") {
    steps {
      sh 'terraform --version'    }
  }
 
  stage("Provision infrastructure") {
  steps {
    bat 'terraform init'
    bat 'terraform plan'
    bat 'terraform apply -auto-approve'
  }
  }
 }
}
