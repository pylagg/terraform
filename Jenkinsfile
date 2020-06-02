pipeline {
  agent any
  stages {
   stage("Set terraform path") {
    steps {
      bat "${tool name: 'Terraform', type: 'com.cloudbees.jenkins.plugins.customtools.CustomTool'}\terraform --version"
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
