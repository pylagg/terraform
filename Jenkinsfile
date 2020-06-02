pipeline {
  agent any
  stages {
   stage("Set terraform path") {
    steps {
      bat "${env.Terraform}/terraform --version"
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
